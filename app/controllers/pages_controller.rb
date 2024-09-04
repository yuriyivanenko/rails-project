class PagesController < ApplicationController
  def home
    redirect_to new_user_session_path and return unless current_user

    @transactions = current_user.transactions
  end
end
