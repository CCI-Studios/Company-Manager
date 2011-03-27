class AddManagerToCompany < ActiveRecord::Migration
  def self.up
    add_column :companies, :manager_id, :int
  end

  def self.down
    remove_column :companies, :manager_id
  end
end
