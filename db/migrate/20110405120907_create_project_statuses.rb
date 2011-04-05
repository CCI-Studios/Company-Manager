class CreateProjectStatuses < ActiveRecord::Migration
  def self.up
    create_table :project_statuses do |t|
      t.string :title
      t.string :type
      t.integer :ordering

      t.timestamps
    end
  end

  def self.down
    drop_table :project_statuses
  end
end
