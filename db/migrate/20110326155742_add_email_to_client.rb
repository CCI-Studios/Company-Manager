class AddEmailToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :email, :text
  end

  def self.down
    remove_column :clients, :email
  end
end
