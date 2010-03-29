class ChangeUserIdForTodo < ActiveRecord::Migration
  def self.up
    change_column :todos, :user_id, :integer, :null => true
  end

  def self.down
  end
end
