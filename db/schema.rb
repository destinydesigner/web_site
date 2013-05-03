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

ActiveRecord::Schema.define(:version => 20130503153515) do

  create_table "days", :force => true do |t|
    t.integer  "order"
    t.string   "section"
    t.integer  "week_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "days", ["week_id"], :name => "index_days_on_week_id"

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.integer  "day_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "exercises", ["day_id"], :name => "index_exercises_on_day_id"

  create_table "programs", :force => true do |t|
    t.integer  "level"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sheets", :force => true do |t|
    t.string   "no"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "weeks", :force => true do |t|
    t.integer  "order"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "weeks", ["program_id"], :name => "index_weeks_on_program_id"

end