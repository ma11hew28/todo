class UserIdNotNull0 < ActiveRecord::Migration
  def self.up
    change_column :todos, :user_id, :integer, :default => 0, :null => false
  end

  def self.down
    change_column :todos, :user_id, :integer
  end
end
