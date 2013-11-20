class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.integer :database_id
      t.string :drug_name
      t.decimal :drug_amount
      t.decimal :drug_price
      t.text :weapons

      t.timestamps
    end
  end
end
