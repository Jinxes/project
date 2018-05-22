class Api::V1::AuthController < Api::V1::BaseController

  def index
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    render json: user.token
  end

  def create
    param = params.permit(:username, :email, :password)
    user = User.create(param)
    if user.invalid?
      return render json: user.errors.messages, status: 422
    end
    render body: nil, status: 201
  end

end
