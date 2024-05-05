# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_04_152622) do
  create_table "commerce_commons_product_variants", force: :cascade do |t|
    t.integer "product_id"
    t.string "inventory_basis_gid"
    t.string "fulfillment_basis_gid"
    t.json "options", default: "{}", null: false
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_commerce_commons_product_variants_on_product_id"
  end

  create_table "commerce_commons_products", force: :cascade do |t|
    t.text "title"
    t.text "handle"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["handle"], name: "index_commerce_commons_products_on_handle", unique: true
  end

  add_foreign_key "commerce_commons_product_variants", "commerce_commons_products", column: "product_id"
end
