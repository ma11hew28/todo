class AddParentIdToTodos < ActiveRecord::Migration
  def self.up
    add_column :todos, :parent_id, :integer
    add_column :todos, :lft, :integer
    add_column :todos, :rgt, :integer
  end

  def self.down
    remove_column :todos, :parent_id
    remove_column :todos, :lft, :integer
    remove_column :todos, :rgt, :integer
  end
end
