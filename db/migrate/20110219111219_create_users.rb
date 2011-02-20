class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name
      t.string :password_hash
      t.datetime :last_signin
      t.string :last_ip

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
