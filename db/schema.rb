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

ActiveRecord::Schema.define(version: 2018_06_07_140302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apprentices", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "agency_id"
    t.string "trade"
    t.string "skills"
    t.string "borough"
    t.string "address"
    t.string "personal_statement"
    t.date "app_start_date"
    t.date "app_end_date"
    t.string "college_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hourly_rate_cents", default: 0, null: false
    t.index ["agency_id"], name: "index_apprentices_on_agency_id"
    t.index ["user_id"], name: "index_apprentices_on_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "type"
    t.bigint "timesheet_id"
    t.string "proof_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount_cents", default: 0, null: false
    t.index ["timesheet_id"], name: "index_expenses_on_timesheet_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "timesheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount_cents", default: 0, null: false
    t.index ["timesheet_id"], name: "index_invoices_on_timesheet_id"
  end

  create_table "placements", force: :cascade do |t|
    t.bigint "host_validator_id"
    t.bigint "host_invoice_contact_id"
    t.bigint "apprentice_id"
    t.date "pl_start_date"
    t.date "pl_end_date"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hourly_rate_cents", default: 0, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["apprentice_id"], name: "index_placements_on_apprentice_id"
    t.index ["host_invoice_contact_id"], name: "index_placements_on_host_invoice_contact_id"
    t.index ["host_validator_id"], name: "index_placements_on_host_validator_id"
  end

  create_table "timesheet_segments", force: :cascade do |t|
    t.date "date"
    t.float "hours_worked"
    t.string "type_of_work"
    t.bigint "timesheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["timesheet_id"], name: "index_timesheet_segments_on_timesheet_id"
  end

  create_table "timesheets", force: :cascade do |t|
    t.bigint "placement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "week_start"
    t.date "week_end"
    t.string "status", default: "Pending"
    t.index ["placement_id"], name: "index_timesheets_on_placement_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.string "role"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "apprentices", "users"
  add_foreign_key "expenses", "timesheets"
  add_foreign_key "invoices", "timesheets"
  add_foreign_key "timesheet_segments", "timesheets"
  add_foreign_key "timesheets", "placements"
end
