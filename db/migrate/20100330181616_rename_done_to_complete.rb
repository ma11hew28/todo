class RenameDoneToComplete < ActiveRecord::Migration
  def self.up
    rename_column :todos, :done, :complete
  end

  def self.down
    rename_column :todos, :complete, :done
  end
end
