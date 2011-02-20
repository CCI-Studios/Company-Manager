class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.date :start_date
      t.date :completion_date
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
