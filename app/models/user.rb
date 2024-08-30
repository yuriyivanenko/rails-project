class User < ApplicationRecord
  validates :territory, presence: true
  belongs_to :territory
  has_many :installers, through: :territory

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
