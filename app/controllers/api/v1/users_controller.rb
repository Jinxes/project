class Api::V1::UsersController < Api::V1::BaseController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    param = params.permit(:nickname, :email, :password)
    user = User.create(param)
    if user.invalid?
      return render body: JSON.parse(user.errors.messages), status: 422
    end
    render body: nil, status: 201
  end
end
