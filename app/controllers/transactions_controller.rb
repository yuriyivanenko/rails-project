class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    puts params
  end
end
