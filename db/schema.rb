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

ActiveRecord::Schema.define(version: 2020_01_03_143425) do

  create_table "apartment_price_values", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "apartment_id", null: false
    t.integer "trade_price", null: false
    t.integer "lease_price"
    t.integer "price_gap"
    t.float "value", null: false
    t.float "value_gap", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "year", null: false
    t.integer "month", null: false
    t.index ["apartment_id"], name: "index_apartment_price_values_on_apartment_id"
  end

  create_table "apartments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "region_code", null: false
    t.string "region_kr", null: false
    t.string "dong", null: false
    t.string "apartment_name", null: false
    t.string "address_code", null: false
    t.string "space", null: false
    t.integer "built_year", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_code", "apartment_name", "space"], name: "index_apartments_on_region_code_and_apartment_name_and_space"
  end

  create_table "error_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "region_code", null: false
    t.integer "year_month", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "region_kr", null: false
    t.integer "data_type", null: false
    t.integer "finish_dncd"
    t.index ["region_code"], name: "index_error_histories_on_region_code"
  end

  create_table "lease_raw_data", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "region_code", null: false
    t.string "region_kr", null: false
    t.integer "year_month", null: false
    t.integer "transaction_year", null: false
    t.integer "transaction_month", null: false
    t.integer "transaction_day", null: false
    t.string "apartment_name", null: false
    t.string "dong", null: false
    t.string "address_code", null: false
    t.string "floor"
    t.string "space", null: false
    t.integer "built_year", null: false
    t.integer "deposit", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_code", "transaction_year"], name: "index_lease_raw_data_on_region_code_and_transaction_year"
  end

  create_table "raw_data", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "region_code", null: false
    t.string "region_kr", null: false
    t.integer "year_month", null: false
    t.integer "transaction_year", null: false
    t.integer "transaction_month", null: false
    t.integer "transaction_day", null: false
    t.string "apartment_name", null: false
    t.string "dong", null: false
    t.string "address_code"
    t.string "floor"
    t.string "space", null: false
    t.integer "built_year"
    t.integer "price", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_code", "transaction_year"], name: "index_raw_data_on_region_code_and_transaction_year"
  end

end
