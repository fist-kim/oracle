class ChangeColumnErrorHistory < ActiveRecord::Migration[6.0]
  def change
    add_column :error_histories, :region_kr, :string, null: false
    add_column :error_histories, :data_type, :integer, null: false
  end
end
