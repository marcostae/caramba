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

ActiveRecord::Schema.define(version: 20140917130106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievement_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "achievement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "achievements", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "attribute"
    t.integer  "threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combinis", force: true do |t|
    t.integer  "user_id"
    t.integer  "typegroup_id"
    t.integer  "type_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "neighborhood_id"
    t.string   "name"
    t.integer  "quality_rank"
  end

  create_table "comments", force: true do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "combini_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_items", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "complaint_id"
    t.boolean  "like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "min_lvl"
    t.integer  "price"
    t.string   "image_url"
    t.integer  "product_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "typegroups", force: true do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.integer  "typegroup_id"
    t.string   "name"
    t.string   "icon_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password"
    t.integer  "xp"
    t.integer  "gold"
    t.integer  "lvl"
    t.string   "title_id"
    t.string   "motto"
  end

end
