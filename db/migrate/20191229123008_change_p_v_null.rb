class ChangePVNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :apartment_price_values, :year, false
    change_column_null :apartment_price_values, :month, false
  end
end
