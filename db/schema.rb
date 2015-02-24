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

ActiveRecord::Schema.define(version: 20150224101551) do

  create_table "case_steps", force: true do |t|
    t.text     "step"
    t.text     "step_result"
    t.integer  "case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.time     "date"
    t.string   "priority"
    t.integer  "planned_duration"
    t.string   "tags"
    t.text     "objective"
    t.text     "test_data"
    t.text     "preconditions"
    t.text     "comment"
    t.integer  "suite_id"
  end

  create_table "components", force: true do |t|
    t.string  "title"
    t.integer "project_id"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suites", force: true do |t|
    t.string   "title"
    t.datetime "datetime"
    t.string   "priority"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

end
