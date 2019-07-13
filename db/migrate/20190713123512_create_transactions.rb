class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :buyer_user
      t.references :customer_user
      t.float :total
      t.boolean :status
      t.timestamps
    end
  end
end
