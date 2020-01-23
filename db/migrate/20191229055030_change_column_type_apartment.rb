class ChangeColumnTypeApartment < ActiveRecord::Migration[6.0]
  def change
    change_column :apartments, :region_kr, :string
    change_column :apartments, :dong, :string
    change_column :apartments, :apartment_name, :string
    change_column :apartments, :address_code, :string
    change_column :apartments, :space, :string
  end
end