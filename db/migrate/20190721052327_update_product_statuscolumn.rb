class UpdateProductStatuscolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :status
    add_column :products, :status, :integer, :default => 1
  end
end
