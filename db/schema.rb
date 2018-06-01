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

ActiveRecord::Schema.define(version: 20180601084736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "pgcrypto"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "part_costs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "cost"
    t.uuid "part_id"
    t.uuid "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_part_costs_on_part_id"
    t.index ["resource_id"], name: "index_part_costs_on_resource_id"
  end

  create_table "part_stats", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "ratio"
    t.uuid "stat_id"
    t.uuid "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_part_stats_on_part_id"
    t.index ["stat_id"], name: "index_part_stats_on_stat_id"
  end

  create_table "parts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.integer "regen_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rocket_parts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "level"
    t.uuid "rocket_id"
    t.uuid "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_rocket_parts_on_part_id"
    t.index ["rocket_id"], name: "index_rocket_parts_on_rocket_id"
  end

  create_table "rockets", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.uuid "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rockets_on_user_id"
  end

  create_table "stats", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_resources", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "quantity"
    t.uuid "user_id"
    t.uuid "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_user_resources_on_resource_id"
    t.index ["user_id"], name: "index_user_resources_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "part_costs", "parts"
  add_foreign_key "part_costs", "resources"
  add_foreign_key "part_stats", "parts"
  add_foreign_key "part_stats", "stats"
  add_foreign_key "rocket_parts", "parts"
  add_foreign_key "rocket_parts", "rockets"
  add_foreign_key "rockets", "users"
  add_foreign_key "user_resources", "resources"
  add_foreign_key "user_resources", "users"
end
