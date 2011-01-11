class RealName < ActiveRecord::Migration
  def self.up
	add_column :users, :real_name, :string
	remove_column :users, :name, :string
  end

  def self.down
	remove_column :users, :real_name, :string
	add_column :users, :name, :string
  end
end
