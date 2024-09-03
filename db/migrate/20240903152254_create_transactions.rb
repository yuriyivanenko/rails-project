class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.references :installer, foreign_key: true
      t.references :territory, foreign_key: true
      t.references :part, foreign_key: true
      t.integer :quantity
      t.decimal :amount, precision: 10, scale: 2
      t.string :project_number
      t.string :product
      t.datetime :date
      t.timestamps
    end
  end
end
