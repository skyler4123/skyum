class ApplicationController < ActionController::Base
  append_view_path(Dir.glob(Rails.root.join('app/packages/*/views')))

  # before_action :authenticate_user!

  def current_user
    return nil if session[:access_token].nil?
    @current_user ||= User.find(JsonWebToken.decode(token: session[:access_token])[:id])
  rescue JWT::DecodeError, NoMethodError
    nil
  end

  def user_signed_in?
    !!current_user
  end

  def authenticate_user!
    redirect_to signin_path unless user_signed_in?
  end
  
end
