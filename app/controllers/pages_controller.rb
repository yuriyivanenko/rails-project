class PagesController < ApplicationController
  def home
    return if current_user

    redirect_to new_user_session_path
  end
end
