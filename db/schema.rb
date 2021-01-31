# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_31_180154) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.boolean "validated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_prices", force: :cascade do |t|
    t.decimal "price", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id", null: false
    t.integer "supermarket_id", null: false
    t.boolean "validated", default: false, null: false
    t.index ["product_id"], name: "index_product_prices_on_product_id"
    t.index ["supermarket_id"], name: "index_product_prices_on_supermarket_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "validated", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "supermarkets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "product_prices", "products"
  add_foreign_key "product_prices", "supermarkets"
  add_foreign_key "products", "categories"
end
