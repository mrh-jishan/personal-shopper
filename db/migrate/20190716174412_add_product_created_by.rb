class AddProductCreatedBy < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :created_by, index: true
  end
end
