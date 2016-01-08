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

ActiveRecord::Schema.define(version: 20160108060732) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.boolean  "has_sub_category"
    t.integer  "parent",           limit: 4
    t.integer  "has_icon",         limit: 4,   default: 0
    t.string   "image_url",        limit: 255
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
    t.integer  "has_image",    limit: 4,     default: 0
    t.string   "image_url",    limit: 255
    t.float    "price",        limit: 24
    t.integer  "in_stock_now", limit: 4,     default: -1
    t.integer  "created_by",   limit: 4
    t.integer  "updated_by",   limit: 4
    t.integer  "lock_version", limit: 4,     default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",          limit: 4,                     null: false
    t.string   "delivery_address", limit: 255,                   null: false
    t.string   "phone",            limit: 255,                   null: false
    t.string   "items",            limit: 255,                   null: false
    t.date     "required_date",                                  null: false
    t.float    "delivery_cost",    limit: 24,  default: 0.0
    t.string   "promo_code",       limit: 255
    t.float    "order_total",      limit: 24,  default: 0.0
    t.float    "coord_long",       limit: 24,  default: 105.85
    t.float    "coord_lat",        limit: 24,  default: 21.0298
    t.integer  "state",            limit: 4,   default: 0
    t.integer  "user_delete",      limit: 4,   default: 0
    t.integer  "created_by",       limit: 4
    t.integer  "updated_by",       limit: 4
    t.integer  "lock_version",     limit: 4,   default: 0
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string  "name",  limit: 255
    t.integer "grade", limit: 4,   default: 0
    t.integer "age",   limit: 4,   default: 0
    t.string  "sex",   limit: 50,  default: "0"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "account_type", limit: 4,   default: 0
    t.string   "first_name",   limit: 255,             null: false
    t.string   "last_name",    limit: 255,             null: false
    t.string   "email",        limit: 255,             null: false
    t.string   "password",     limit: 255,             null: false
    t.string   "phone",        limit: 255
    t.string   "address",      limit: 255
    t.integer  "created_by",   limit: 4
    t.integer  "updated_by",   limit: 4
    t.integer  "lock_version", limit: 4,   default: 0
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
