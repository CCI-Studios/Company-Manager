class CreateScheduleBlocks < ActiveRecord::Migration
  def self.up
    create_table :schedule_blocks do |t|
      t.integer :order
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :schedule_blocks
  end
end
