class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    project = Project.find_or_create_by(
      project_number: transaction_params[:project_number],
      project_manager: transaction_params[:project_manager]
    )

    @transaction = Transaction.new(transaction_params.except(:project_number, :project_manager))
    @transaction.project = project

    if @transaction.save
      redirect_to root_path
    else
      render :new, status: 422
    end
  end

private

  def transaction_params
    params.require(:transaction).permit(:installer_id, :territory_id, :project_number, :project_manager, :description,
                                        :amount, :date)
  end
end
