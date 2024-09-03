class Installer < ApplicationRecord
  belongs_to :territory
  has_many :transactions, dependent: :destroy
  validates :name, presence: true
end
