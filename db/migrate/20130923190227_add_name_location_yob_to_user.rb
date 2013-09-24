class AddNameLocationYobToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :year_of_birth, :integer
  end
end
