class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :mobile_no, :string
  end
end
