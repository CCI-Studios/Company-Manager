class RenameDeparmentsToDepartments < ActiveRecord::Migration
  def self.up
		rename_table :deparments, :departments
  end

  def self.down
		rename_table :departments, :deparments
  end
end
