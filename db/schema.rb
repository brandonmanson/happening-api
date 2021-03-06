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

ActiveRecord::Schema.define(version: 20160803194442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.date     "date"
    t.integer  "happening_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["happening_id"], name: "index_days_on_happening_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_time"
    t.integer  "day_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["day_id"], name: "index_events_on_day_id", using: :btree
  end

  create_table "happenings", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "happenings_users", id: false, force: :cascade do |t|
    t.integer "happening_id"
    t.integer "user_id"
    t.index ["happening_id"], name: "index_happenings_users_on_happening_id", using: :btree
    t.index ["user_id"], name: "index_happenings_users_on_user_id", using: :btree
  end

  create_table "list_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "list_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["list_id"], name: "index_list_items_on_list_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.integer  "happening_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["happening_id"], name: "index_lists_on_happening_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
