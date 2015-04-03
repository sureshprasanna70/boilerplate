class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :sign_in_check
  private
  def sign_in_check
    if not user_signed_in?
      redirect_to root_path
    end
  end
end
