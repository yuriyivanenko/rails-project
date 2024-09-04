class Project < ApplicationRecord
  has_many :transactions

  validates :project_number, presence: true
  validates :project_manager, presence: true
end
