class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end
