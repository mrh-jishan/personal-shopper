class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :product, foreign_key: true
      t.references :user_buyer
      t.references :user_customer

      t.timestamps
    end
  end
end
