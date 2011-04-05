class AddManagerToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :manager_id, :interger
  end

  def self.down
    remove_column :projects, :manager_id
  end
end
