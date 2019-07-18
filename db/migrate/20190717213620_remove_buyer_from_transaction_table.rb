class RemoveBuyerFromTransactionTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :buyer_user_id
  end
end
