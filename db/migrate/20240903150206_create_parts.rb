class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.integer :product_coding
      t.string :part_number
      t.string :description
      t.integer :amount
      t.timestamps
    end
  end
end
