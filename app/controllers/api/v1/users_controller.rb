class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    user = User.find(params[:id])
    render json: {
      id: user.id
    }
  end
end
