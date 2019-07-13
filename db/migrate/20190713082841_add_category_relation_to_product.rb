class AddCategoryRelationToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :product_categories, index: true
  end
end
