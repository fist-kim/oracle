class CreateErrorHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :error_histories do |t|
      t.integer :region_code, null: false
      t.integer :year_month, null: false
      t.timestamps
      t.index :region_code
    end
  end
end
