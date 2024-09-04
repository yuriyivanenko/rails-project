class PagesController < ApplicationController
  def home
    return if current_user

    @transactions = current_user.transactions

    redirect_to new_user_session_path @transactions
  end
end
