class KillStatusesTable < ActiveRecord::Migration
  def self.up
    drop_table :statuses
  end

  def self.down
    create_table "statuses", :force => true do |t|
      t.string   "title"
      t.integer  "set"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
