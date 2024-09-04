require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before(:each) do
    @installer = create(:installer)
    @territory = create(:territory)
    @project = create(:project)

    @transaction = create(:transaction, installer: @installer, territory: @territory, project: @project)
  end

  it 'is valid with all attributes' do
    expect(@transaction).to be_valid
  end
end
