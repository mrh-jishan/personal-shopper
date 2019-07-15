class AddUserType < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :string, null: false, default: "member"
  end
end
