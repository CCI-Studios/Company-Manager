class RenameGroupToSet < ActiveRecord::Migration
  def self.up
    rename_column :statuses, :group, :set
  end

  def self.down
    rename_column :statuses, :set, :group
  end
end
