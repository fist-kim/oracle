class CreateRawData < ActiveRecord::Migration[6.0]
  def change
    create_table :raw_data do |t|
      t.integer :region_code, null: false
      t.string :region_kr, null: false
      t.integer :year_month, null: false
      t.integer :transaction_year, null: false
      t.integer :transaction_month, null: false
      t.integer :transaction_day, null: false
      t.string :apartment_name, null: false
      t.string :dong, null: false
      t.string :address_code # 지번
      t.string :floor
      t.string :space, null: false
      t.integer :built_year
      t.integer :price, null: false
      t.timestamps
    end
  end
end