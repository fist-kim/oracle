class AddIndexRawDatas < ActiveRecord::Migration[6.0]
  def change
    add_index :raw_data, [:region_code, :transaction_year]
  end
end
