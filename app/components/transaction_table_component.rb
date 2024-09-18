class TransactionTableComponent < ViewComponent::Base
  attr_reader :transactions

  def initialize(transactions:)
    super
    @transactions = transactions
  end
end
