class AddUserType < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :string, null: false, default: "member"
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
