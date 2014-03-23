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

ActiveRecord::Schema.define(version: 20140323200437) do

  create_table "clients", force: true do |t|
    t.string   "code"
    t.datetime "birth_date"
    t.datetime "register_date"
    t.string   "register_location_name"
    t.boolean  "new"
    t.string   "gender"
    t.text     "how_did_you_hear"
    t.boolean  "veterancy"
    t.string   "neighborhood"
    t.boolean  "hiv_screen"
    t.boolean  "hiv_pos"
    t.boolean  "hep_b_screen"
    t.boolean  "hep_b_pos"
    t.boolean  "hep_c_screen"
    t.boolean  "hep_c_pos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exchanges", force: true do |t|
    t.integer  "ultrafines"
    t.integer  "halfs"
    t.integer  "pogos"
    t.integer  "blues"
    t.integer  "one_qt"
    t.integer  "two_qt"
    t.integer  "three_gal"
    t.integer  "alcohol_whipes"
    t.integer  "cookers"
    t.integer  "cottons"
    t.integer  "ties"
    t.integer  "bleach"
    t.integer  "condoms"
    t.integer  "ascorbic_acid"
    t.integer  "pieces_of_lit"
    t.integer  "narcan"
    t.integer  "secondary_exchange"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "role"
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "exchange_id"
    t.integer  "location_id"
    t.integer  "client_id"
    t.datetime "visit_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
