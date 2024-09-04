require 'rails_helper'

RSpec.describe Territory, type: :model do
  before(:each) do
    @territory = build(:territory)
  end
  
  it 'is valid with a name and coding' do
    expect(@territory).to be_valid
  end

    it 'has many installers' do
      create_list(:installer, 2, territory: @territory)
      expect(@territory.installers.count).to eq(2)
    end
end
