class ChangeTypeOfMenuFields < ActiveRecord::Migration
  def self.up
    change_table :menus do |t|
      t.change :title, :string
      t.change :link, :string
    end
  end

  def self.down
    change_table :menus do |t|
      t.change :title, :text
      t.change :link, :text
    end
  end
end
