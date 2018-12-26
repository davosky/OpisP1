class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to home_authorization_path, :alert => exception.message
  end
  protect_from_forgery with: :exception
end
