class User < ApplicationRecord
  belongs_to :territory
  has_many :installers, through: :territory
  has_many :transactions, through: :installers
  has_many :projects, through: :transactions

  validates :territory, presence: true
  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
