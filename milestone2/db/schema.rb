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

ActiveRecord::Schema.define(version: 20141112015314) do

  create_table "cases", force: true do |t|
    t.integer  "serial"
    t.string   "name"
    t.string   "issue"
    t.string   "technical_area"
    t.date     "time"
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "en_banc_reviews", force: true do |t|
    t.integer  "case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "info_queries", force: true do |t|
    t.boolean  "is_owner"
    t.integer  "user_size"
    t.integer  "oppo_size"
    t.string   "user_loc"
    t.string   "oppo_loc"
    t.string   "law_issue"
    t.string   "tech_area"
    t.string   "judge1"
    t.string   "judge2"
    t.string   "judge3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "involves", force: true do |t|
    t.integer  "case_id"
    t.integer  "party_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: true do |t|
    t.integer  "party_num"
    t.string   "name"
    t.integer  "size"
    t.string   "location"
    t.string   "race"
    t.string   "gender"
    t.string   "political_affiliation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
