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

ActiveRecord::Schema.define(version: 2021_05_15_205953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "personal_information_id", null: false
    t.bigint "title_id", null: false
    t.bigint "company_id", null: false
    t.string "nmls"
    t.bigint "referrer_code_id"
    t.integer "paying_manayer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "billing_id", null: false
    t.index ["billing_id"], name: "index_accounts_on_billing_id"
    t.index ["company_id"], name: "index_accounts_on_company_id"
    t.index ["personal_information_id"], name: "index_accounts_on_personal_information_id"
    t.index ["referrer_code_id"], name: "index_accounts_on_referrer_code_id"
    t.index ["title_id"], name: "index_accounts_on_title_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "zip"
    t.string "city"
    t.string "street"
    t.bigint "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_addresses_on_state_id"
  end

  create_table "billings", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_billings_on_address_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "nmls"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personal_informations", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "mobile_phone"
    t.string "direct_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "referrer_codes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "third_party_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string "name"
    t.boolean "thirdParty"
    t.boolean "borrower"
    t.boolean "lender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code"
  end

  add_foreign_key "accounts", "billings"
  add_foreign_key "accounts", "companies"
  add_foreign_key "accounts", "personal_informations"
  add_foreign_key "accounts", "referrer_codes"
  add_foreign_key "accounts", "titles"
  add_foreign_key "addresses", "states"
  add_foreign_key "billings", "addresses"
end
