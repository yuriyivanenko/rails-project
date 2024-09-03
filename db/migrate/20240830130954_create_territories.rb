class CreateTerritories < ActiveRecord::Migration[7.1]
  def change
    create_table :territories do |t|
      t.string :name
      t.string :territory_coding
      t.timestamps
    end
  end
end
