class CreateResolutionsUsersJoinTable < ActiveRecord::Migration
 def self.up
      create_table :resolutions_users, :id => false do |t|
        t.integer :resolution_id
        t.integer :users_id
      end
    end

    def self.down
      drop_table :resolutions_users
    end

end
