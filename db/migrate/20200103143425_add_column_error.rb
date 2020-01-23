class AddColumnError < ActiveRecord::Migration[6.0]
  def change
    add_column :error_histories, :finish_dncd, :integer, null: true
  end
end
