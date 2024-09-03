class User < ApplicationRecord
  validates :territory, presence: true
  belongs_to :territory
  has_many :installers, through: :territory

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
