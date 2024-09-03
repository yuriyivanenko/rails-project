class Installer < ApplicationRecord
  belongs_to :territory
  validates :name, presence: true
end
