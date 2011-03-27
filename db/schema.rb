# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110327053133) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "due_date"
    t.date     "start_date"
    t.date     "completion_date"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_types", :force => true do |t|
    t.string   "name"
    t.string   "prefix"
    t.string   "suffix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.float    "goal"
    t.integer  "goal_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone1"
    t.string   "extension1"
    t.string   "phone2"
    t.string   "extension2"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "email"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone1"
    t.string   "extension1"
    t.string   "phone2"
    t.string   "extension2"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.date     "due_date"
    t.date     "start_date"
    t.date     "completion_date"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", :force => true do |t|
    t.string   "name"
    t.float    "amount"
    t.date     "close_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_blocks", :force => true do |t|
    t.integer  "order"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "todos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password_hash"
    t.datetime "last_signin"
    t.string   "last_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
