class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.date :due_date
      t.date :start_date
      t.date :completion_date
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
