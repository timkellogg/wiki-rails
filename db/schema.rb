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

ActiveRecord::Schema.define(version: 20151012161546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "mailing_address"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.string   "mailing_zip"
    t.string   "street_address"
    t.string   "street_city"
    t.string   "street_state"
    t.string   "street_zip"
    t.string   "url"
    t.string   "phone"
    t.string   "fax"
    t.string   "description"
    t.string   "img"
    t.string   "hours_of_operation"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "businesses", ["category_id"], name: "index_businesses_on_category_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
