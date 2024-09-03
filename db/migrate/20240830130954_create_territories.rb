class CreateTerritories < ActiveRecord::Migration[7.1]
  def change
    create_table :territories do |t|
      t.string :name
      t.string :code
      t.boolean :windows
      t.boolean :siding
      t.boolean :doors
      t.boolean :gutters
      t.boolean :roofing
      t.boolean :solar
      t.timestamps
    end
  end
end
