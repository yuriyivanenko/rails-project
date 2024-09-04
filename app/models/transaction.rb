class Transaction < ApplicationRecord
  belongs_to :installer
  belongs_to :territory
  belongs_to :project

  validates :installer_id, presence: true
  validates :territory_id, presence: true
  validates :description, presence: true
  validates :amount, presence: true
  validates :project_id, presence: true
  validates :date, presence: true
end
