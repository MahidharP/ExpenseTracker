class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :mobile, :string 
  	add_column :users, :gender, :string
  	add_column :users, :dob, :date
  end
end
