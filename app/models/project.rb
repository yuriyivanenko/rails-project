class Project < ApplicationRecord
  validates :project_number, presence: true
  validates :project_manager, presence: true
end
