class UserIdNotNull < ActiveRecord::Migration
  def self.up
    remove_column :todos, :user_id
    add_column :todos, :user_id, :integer, :null => true
  end

  def self.down
    remove_column :todos, :user_id
    add_column :todos, :user_id, :integer
  end
end
