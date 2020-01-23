class AddRawDatasNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :raw_data, :address_code, null: false
    change_column_null :raw_data, :built_year, null: false
  end
end
