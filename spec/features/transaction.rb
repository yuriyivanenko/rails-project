require "rails_helper"

RSpec.describe "Transactions", type: :request do
  before(:each) do
    @installer = create(:installer)
    @territory = @installer.territory
    @project = create(:project)
  end

  it "creates a transaction" do
    transaction_params = {
      transaction: {
        description: "Window installation",
        amount: 250.00,
        date: Date.today,
        installer_id: @installer.id,
        territory_id: @territory.id,
        project_id: @project.id
      }
    }

    # Simulate a POST request to create a transaction
    post transactions_path, params: transaction_params
  end
end
