class CreateInstallers < ActiveRecord::Migration[7.1]
  def change
    create_table :installers do |t|
      t.string :name
      t.string :email
      t.references :territory, foreign_key: true
      t.timestamps
    end
  end
end
