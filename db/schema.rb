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

ActiveRecord::Schema.define(version: 2019_11_07_184643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.string "house"
    t.string "flat"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_adresses_on_user_id"
  end

  create_table "calls", force: :cascade do |t|
    t.datetime "duration"
    t.boolean "payment_state"
    t.datetime "time"
    t.string "city"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_calls_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "call_id", null: false
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["call_id"], name: "index_invoices_on_call_id"
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "tariffs", force: :cascade do |t|
    t.string "city"
    t.float "price"
    t.float "special_price"
    t.date "expire_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_number"
    t.string "name"
    t.string "surname"
    t.string "patronymic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "adresses", "users"
  add_foreign_key "calls", "users"
  add_foreign_key "invoices", "calls"
  add_foreign_key "invoices", "users"
end
