class PagesController < ApplicationController
  def home
    redirect_to new_user_session_path and return unless current_user

    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @transactions = Transaction.within_date_range(start_date, end_date)
    else
      @transactions = current_user.transactions
    end
  end
end
