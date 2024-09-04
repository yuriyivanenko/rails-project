class Transaction < ApplicationRecord
  belongs_to :installer
  belongs_to :territory
  belongs_to :project
end
