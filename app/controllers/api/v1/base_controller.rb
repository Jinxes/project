class Api::V1::BaseController < ActionController::API

  attr_accessor :current_user

  protected

  def authenticate!
    render_failed and return unless token?
    @current_user = User.find_by(id: auth_token[:id])
    response.headers['Authorization'] = @current_user.token[:token]
  rescue JWT::VerificationError, JWT::DecodeError
    render_failed
  end

  private

  def render_failed
    render status: :unauthorized
  end

  def http_token
    @http_token ||= if request.headers['Authorization'].present?
      request.headers['Authorization'].split(' ').last
    end
  end

  def auth_token
    @auth_token ||= Token.decode(http_token)
  end

  def token?
    http_token && auth_token && auth_token[:user_id].to_i
  end

end
