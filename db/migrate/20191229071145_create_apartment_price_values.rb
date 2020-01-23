class CreateApartmentPriceValues < ActiveRecord::Migration[6.0]
  def change
    create_table :apartment_price_values do |t|
      t.integer :apartment_id, null: false
      t.integer :trade_price, null: false
      t.integer :lease_price, null: true
      t.integer :price_gap, null: true
      t.float :value, null: false
      t.float :value_gap, null: false
      t.timestamps
      t.index :apartment_id
    end
  end
end
