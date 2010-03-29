class AddUserIdToTodo < ActiveRecord::Migration
  def self.up
    add_column :todos, :user_id, :integer
  end

  def self.down
    remove_column :todos, :user_id
  end
end
