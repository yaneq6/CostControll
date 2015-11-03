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

ActiveRecord::Schema.define(version: 20151028155900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "market_products", force: :cascade do |t|
    t.float    "price"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "market_id"
  end

  add_index "market_products", ["market_id"], name: "index_market_products_on_market_id", using: :btree
  add_index "market_products", ["product_id", "created_at"], name: "index_market_products_on_product_id_and_created_at", using: :btree
  add_index "market_products", ["product_id"], name: "index_market_products_on_product_id", using: :btree

  create_table "market_products_shopping_sessions", id: false, force: :cascade do |t|
    t.integer "market_product_id"
    t.integer "shopping_session_id"
  end

  add_index "market_products_shopping_sessions", ["market_product_id"], name: "index_market_products_shopping_sessions_on_market_product_id", using: :btree
  add_index "market_products_shopping_sessions", ["shopping_session_id"], name: "index_market_products_shopping_sessions_on_shopping_session_id", using: :btree

  create_table "markets", force: :cascade do |t|
    t.string   "adress"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "barcode"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "shopping_sessions", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "market_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shopping_sessions", ["market_id"], name: "index_shopping_sessions_on_market_id", using: :btree
  add_index "shopping_sessions", ["user_id"], name: "index_shopping_sessions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "market_products", "markets"
  add_foreign_key "market_products", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "shopping_sessions", "markets"
  add_foreign_key "shopping_sessions", "users"
end
