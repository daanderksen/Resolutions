class CreateIntends < ActiveRecord::Migration
  def self.up
    create_table :intends do |t|
      t.integer :resolution_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :intends
  end
end
