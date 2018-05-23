class Api::V1::UserController < Api::V1::BaseController

  before_action :authenticate!

  def index
    @user = @current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    user = @current_user
    param = params.permit(:email, :username, :sign, :gender, :intro, :birthday)
    user.update(param)
    if user.invalid?
      return render json: user.errors.messages, status: 422
    end
    render body: nil, status: 200
  end

end
