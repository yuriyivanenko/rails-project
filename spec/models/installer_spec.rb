require 'rails_helper'

RSpec.describe Installer, type: :model do
  before(:each) do
    @installer = create(:installer)
  end

  describe 'associations' do
    it 'belongs to a territory' do
      expect(@installer.territory).to be_present
    end

    it 'has many transactions' do
      create_list(:transaction, 2, installer: @installer)
      expect(@installer.transactions.count).to eq(2)
    end
  end

  describe 'validations' do
    it 'is valid with a name and email' do
      expect(@installer).to be_valid
    end
  end
end
