class Installer < ApplicationRecord
  belongs_to :territory
  has_many :transactions
  validates :name, presence: true
end
