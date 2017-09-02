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

ActiveRecord::Schema.define(version: 20170902040807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_comments", force: :cascade do |t|
    t.string   "name"
    t.string   "text"
    t.decimal  "comment_id", precision: 9, scale: 2
    t.boolean  "approved"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "carts", force: :cascade do |t|
    t.decimal  "user_id",    precision: 9, scale: 2
    t.decimal  "product_id", precision: 9, scale: 2
    t.integer  "quantity"
    t.string   "status"
    t.decimal  "order_id",   precision: 9, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "approved"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "subtotal",   precision: 9, scale: 2
    t.decimal  "tax",        precision: 9, scale: 2
    t.decimal  "total",      precision: 9, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "product_type"
    t.decimal  "stock",        precision: 9, scale: 2
    t.decimal  "cost",         precision: 9, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image"
  end

  create_table "texts", force: :cascade do |t|
    t.string   "name"
    t.string   "text"
    t.decimal  "comment_id"
    t.boolean  "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
