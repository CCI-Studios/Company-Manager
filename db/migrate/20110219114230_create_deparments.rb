class CreateDeparments < ActiveRecord::Migration
  def self.up
    create_table :deparments do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :deparments
  end
end
