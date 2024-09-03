class User < ApplicationRecord
  validates :territory, presence: true
  belongs_to :territory
  has_many :installers, through: :territory
  has_many :transactions, through: :installers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
