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

ActiveRecord::Schema.define(version: 20151215140201) do

  create_table "Order", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.date     "required_date"
    t.integer  "created_by",    limit: 4
    t.integer  "updated_by",    limit: 4
    t.integer  "lock_version",  limit: 4, default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.boolean  "has_sub_category"
    t.integer  "parent",           limit: 4
    t.integer  "created_by",       limit: 4
    t.integer  "updated_by",       limit: 4
    t.integer  "lock_version",     limit: 4,   default: 0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.text     "description",  limit: 65535
    t.integer  "category_id",  limit: 4
    t.float    "price",        limit: 24
    t.integer  "in_stock_now", limit: 4
    t.integer  "created_by",   limit: 4
    t.integer  "updated_by",   limit: 4
    t.integer  "lock_version", limit: 4,     default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.string   "phone",        limit: 255
    t.string   "address",      limit: 255
    t.integer  "created_by",   limit: 4
    t.integer  "updated_by",   limit: 4
    t.integer  "lock_version", limit: 4,   default: 0
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
