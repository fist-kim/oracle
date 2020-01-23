class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.integer :region_code, null: false
      t.integer :region_kr, null: false
      t.integer :dong, null: false
      t.integer :apartment_name, null: false
      t.integer :address_code, null: false
      t.integer :space, null: false
      t.integer :built_year, null: false
      t.timestamps
      t.index [:region_code, :apartment_name, :space]
    end
  end
end