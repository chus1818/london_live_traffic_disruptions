# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141004153750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "london_traffic_disruptions", force: true do |t|
    t.integer  "ltd_id"
    t.string   "status"
    t.string   "severity"
    t.string   "level_of_interest"
    t.string   "category"
    t.string   "sub_category"
    t.datetime "start_time"
    t.string   "location"
    t.string   "corridor"
    t.text     "comments"
    t.text     "current_update"
    t.datetime "remark_time"
    t.datetime "last_mod_time"
    t.text     "cause_area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "london_traffic_disruptions", ["ltd_id"], name: "index_london_traffic_disruptions_on_ltd_id", using: :btree

end
