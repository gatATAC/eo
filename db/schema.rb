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

ActiveRecord::Schema.define(version: 20160712190333) do

  create_table "function_link_types", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "function_links", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "function_src_id"
    t.integer  "function_dest_id"
    t.integer  "function_link_type_id"
  end

  add_index "function_links", ["function_dest_id"], name: "index_function_links_on_function_dest_id"
  add_index "function_links", ["function_link_type_id"], name: "index_function_links_on_function_link_type_id"
  add_index "function_links", ["function_src_id"], name: "index_function_links_on_function_src_id"

  create_table "function_types", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.integer  "root_id"
    t.integer  "parent_id"
    t.integer  "function_type_id"
    t.integer  "layer_id"
    t.integer  "position"
  end

  add_index "functions", ["function_type_id"], name: "index_functions_on_function_type_id"
  add_index "functions", ["layer_id"], name: "index_functions_on_layer_id"
  add_index "functions", ["parent_id"], name: "index_functions_on_parent_id"
  add_index "functions", ["project_id"], name: "index_functions_on_project_id"
  add_index "functions", ["root_id"], name: "index_functions_on_root_id"

  create_table "issue_rms", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_rm_id"
    t.integer  "rm_ident"
    t.string   "subject"
    t.text     "description"
    t.integer  "assignee"
    t.integer  "author"
    t.integer  "tracker"
    t.datetime "start_date"
    t.datetime "due_date"
    t.integer  "done_ratio"
    t.boolean  "eosys",         default: false
    t.integer  "system_id"
  end

  add_index "issue_rms", ["project_rm_id"], name: "index_issue_rms_on_project_rm_id"
  add_index "issue_rms", ["system_id"], name: "index_issue_rms_on_system_id"

  create_table "layers", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_memberships", force: :cascade do |t|
    t.boolean  "contributor",   default: false
    t.integer  "maximum_layer", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "role_id"
  end

  add_index "project_memberships", ["project_id"], name: "index_project_memberships_on_project_id"
  add_index "project_memberships", ["role_id"], name: "index_project_memberships_on_role_id"
  add_index "project_memberships", ["user_id"], name: "index_project_memberships_on_user_id"

  create_table "project_rms", force: :cascade do |t|
    t.string   "rm_url"
    t.integer  "rm_project"
    t.string   "rm_apikey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "project_rms", ["project_id"], name: "index_project_rms_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.text     "description"
    t.boolean  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  add_index "projects", ["owner_id"], name: "index_projects_on_owner_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbrev"
  end

  create_table "system_link_types", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_links", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "system_src_id"
    t.integer  "system_dest_id"
    t.integer  "system_link_type_id"
  end

  add_index "system_links", ["system_dest_id"], name: "index_system_links_on_system_dest_id"
  add_index "system_links", ["system_link_type_id"], name: "index_system_links_on_system_link_type_id"
  add_index "system_links", ["system_src_id"], name: "index_system_links_on_system_src_id"

  create_table "system_types", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systems", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.integer  "root_id"
    t.integer  "parent_id"
    t.integer  "system_type_id"
    t.integer  "position"
    t.integer  "layer_id"
  end

  add_index "systems", ["layer_id"], name: "index_systems_on_layer_id"
  add_index "systems", ["parent_id"], name: "index_systems_on_parent_id"
  add_index "systems", ["project_id"], name: "index_systems_on_project_id"
  add_index "systems", ["root_id"], name: "index_systems_on_root_id"
  add_index "systems", ["system_type_id"], name: "index_systems_on_system_type_id"

  create_table "users", force: :cascade do |t|
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                default: "active"
    t.datetime "key_timestamp"
    t.boolean  "developer",                            default: false
  end

  add_index "users", ["state"], name: "index_users_on_state"

  create_table "xcos_boxes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "system_id"
  end

  add_index "xcos_boxes", ["system_id"], name: "index_xcos_boxes_on_system_id"

end
