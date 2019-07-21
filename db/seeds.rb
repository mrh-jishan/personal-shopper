# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
#

ProductCategory.create(:name => 'test category 01', :active => true)
ProductCategory.create(:name => 'test category 02', :active => true)
ProductCategory.create(:name => 'test category 03', :active => true)
ProductCategory.create(:name => 'test category 04', :active => true)
ProductCategory.create(:name => 'test category 05', :active => true)


admin = User.create(:name => 'admin', :email => 'admin@gmail.com', :gender => 'Male', :password => 'admin@1234', :contact => '01126747564', :user_type => USER_TYPES[:ADMIN])

Address.create(:country => 'MY', :address => 'address', :state => 'state', :postcode => 43300, :user => admin)

