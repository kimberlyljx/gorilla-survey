class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |u|
  		u.string :username, uniqueness: true
  		u.string :password
  	end
  end
end
