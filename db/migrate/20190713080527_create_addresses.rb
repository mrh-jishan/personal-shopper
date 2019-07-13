class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :address
      t.string :state
      t.integer :postcode
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
