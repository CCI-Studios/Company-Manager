class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :phone1
      t.string :extension1
      t.string :phone2
      t.string :extension2
      t.string :address1
      t.string :address2
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
