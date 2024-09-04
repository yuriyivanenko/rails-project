require 'rails_helper'

RSpec.describe Project, type: :model do
  before(:each) do
    @project = build(:project)
  end
  
  it 'is valid with a project number and manager' do
    expect(@project).to be_valid
  end
end
