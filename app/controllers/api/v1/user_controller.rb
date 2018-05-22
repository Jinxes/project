class Api::V1::UserController < Api::V1::BaseController

  before_action :authenticate!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
