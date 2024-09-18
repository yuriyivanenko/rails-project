require "rails_helper"

RSpec.describe TransactionTableComponent, type: :component do
  it "renders the transactions table" do
    transactions = create_list(:transaction, 1)

    render_inline(TransactionTableComponent.new(transactions: transactions))

    expect(page).to have_text("Test Transaction")
  end
end
