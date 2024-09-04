class Territory < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :installers, dependent: :destroy
end
