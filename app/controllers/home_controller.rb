class HomeController < ApplicationController
before_filter:sign_in_check
  def index
  end
  private
  def sign_in_check
    if not user_signed_in?
      redirect_to new_user_session_path
    end
  end

end
