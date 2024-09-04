class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :project_number
      t.string :project_manager
      t.timestamps
    end
  end
end
