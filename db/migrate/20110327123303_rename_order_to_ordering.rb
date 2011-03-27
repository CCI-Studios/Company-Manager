class RenameOrderToOrdering < ActiveRecord::Migration
  def self.up
    rename_column :menus, :order, :ordering
  end

  def self.down
    rename_column :menus, :ordering, :order
  end
end
