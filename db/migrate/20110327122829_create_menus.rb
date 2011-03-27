class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.text :title
      t.text :link
      t.integer :order
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
