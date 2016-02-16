class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :biography, :string
  end
end
