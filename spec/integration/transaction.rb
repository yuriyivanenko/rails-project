require "rails_helper"

RSpec.describe "Transactions", type: :request do
  before(:each) do
    @user = create(:user)
    sign_in @user

    @installer = create(:installer, territory: @user.territory)
  end

  it "creates a transaction" do
    transaction_params = {
      transaction: {
        description: "Window installation",
        amount: 250.00,
        date: Date.today,
        installer_id: @installer.id,
        territory_id: @user.territory.id,
        project_number: "36-45678",
        project_manager: "James Keefer"
      }
    }

    post transactions_path, params: transaction_params

    expect(response).to have_http_status(:redirect)
    follow_redirect!
    expect(response.body).to include("36-45678")

    transaction = Transaction.last

    expect(transaction.description).to eq("Window installation")
    expect(transaction.amount).to eq(250.00)
    expect(transaction.date).to eq(Date.today)
    expect(transaction.installer.id).to eq(@installer.id)
    expect(transaction.territory.id).to eq(@user.territory.id)
    expect(transaction.project.project_number).to eq("36-45678")
    expect(transaction.project.project_manager).to eq("James Keefer")
  end
end
