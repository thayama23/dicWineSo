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

ActiveRecord::Schema.define(version: 2020_04_27_034646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "rank"
    t.bigint "user_id"
    t.bigint "wine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
    t.index ["wine_id"], name: "index_comments_on_wine_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "payjp_costomerId"
    t.string "payjp_cardId"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_credit_cards_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "wine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labellings", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "label_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_labellings_on_label_id"
    t.index ["wine_id"], name: "index_labellings_on_wine_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "full_name"
    t.string "full_name_furigana"
    t.integer "age"
    t.integer "zip_code"
    t.string "address"
    t.string "building_name"
    t.integer "telephone"
    t.boolean "ads", default: true
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.text "image"
    t.string "type"
    t.string "country"
    t.string "origin"
    t.string "name"
    t.string "variety"
    t.integer "vintage"
    t.integer "taste"
    t.integer "size"
    t.integer "stock"
    t.boolean "shipment"
    t.string "overview"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "price"
    t.index ["user_id"], name: "index_wines_on_user_id"
  end

  add_foreign_key "comments", "users"
  add_foreign_key "comments", "wines"
  add_foreign_key "credit_cards", "users"
  add_foreign_key "labellings", "labels"
  add_foreign_key "labellings", "wines"
  add_foreign_key "wines", "users"
end
