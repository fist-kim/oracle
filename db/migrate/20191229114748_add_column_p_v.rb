class AddColumnPV < ActiveRecord::Migration[6.0]
  def change
    add_column :apartment_price_values, :year, :integer
    add_column :apartment_price_values, :month, :integer
  end
end
