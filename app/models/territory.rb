class Territory < ApplicationRecord
  has_many :users
  has_many :installers
end
