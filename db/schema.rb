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

ActiveRecord::Schema.define(version: 118) do

  create_table "articles", force: true do |t|
    t.string "title"
    t.string "alias"
    t.string "text"
    t.string "group"
  end

  create_table "browsers", force: true do |t|
    t.string "name"
  end

  create_table "case_steps", force: true do |t|
    t.text     "step"
    t.text     "step_result"
    t.integer  "case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", force: true do |t|
    t.string   "title"
    t.string   "priority"
    t.string   "tags"
    t.text     "objective"
    t.text     "test_data"
    t.text     "preconditions"
    t.text     "comment"
    t.integer  "suite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "check_lists", force: true do |t|
    t.string   "title"
    t.string   "priority"
    t.string   "tags"
    t.text     "description"
    t.integer  "suite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "check_lists", ["deleted_at"], name: "index_check_lists_on_deleted_at"

  create_table "components", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "deleted_at"
  end

  add_index "components", ["deleted_at"], name: "index_components_on_deleted_at"

  create_table "current_states", force: true do |t|
    t.integer "project_id"
    t.integer "component_id"
    t.integer "user_id"
  end

  create_table "execution_types", force: true do |t|
    t.string   "name"
    t.datetime "deleted_at"
  end

  add_index "execution_types", ["deleted_at"], name: "index_execution_types_on_deleted_at"

  create_table "executions", force: true do |t|
    t.integer  "test_object_id"
    t.integer  "execution_types_id"
    t.string   "operating_system"
    t.string   "operating_system_version"
    t.string   "browser"
    t.string   "browser_version"
    t.string   "status"
    t.string   "tester"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "executions", ["deleted_at"], name: "index_executions_on_deleted_at"

  create_table "operating_systems", force: true do |t|
    t.string "name"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.datetime "deleted_at"
  end

  add_index "projects", ["deleted_at"], name: "index_projects_on_deleted_at"

  create_table "results", force: true do |t|
    t.integer  "status_kind_id"
    t.text     "comment"
    t.integer  "execution_id"
    t.integer  "check_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "results", ["deleted_at"], name: "index_results_on_deleted_at"

  create_table "status_kinds", force: true do |t|
    t.string "name"
  end

  create_table "suites", force: true do |t|
    t.string   "title"
    t.string   "priority"
    t.string   "tags"
    t.integer  "component_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "suites", ["deleted_at"], name: "index_suites_on_deleted_at"

  create_table "test_objects", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.integer  "component_id"
    t.datetime "deleted_at"
  end

  add_index "test_objects", ["deleted_at"], name: "index_test_objects_on_deleted_at"

  create_table "users", force: true do |t|
    t.string   "full_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
