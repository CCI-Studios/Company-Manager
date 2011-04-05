class ChangeStatusToIdInProject < ActiveRecord::Migration
  def self.up
    rename_column :projects, :status, :status_id
  end

  def self.down
    rename_column :projects, :status_id, :status
  end
end
