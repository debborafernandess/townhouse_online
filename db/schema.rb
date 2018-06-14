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

ActiveRecord::Schema.define(version: 2018_05_16_022741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "townhouse_area_id", null: false
    t.date "reserved_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["townhouse_area_id", "reserved_to"], name: "index_bookings_on_townhouse_area_id_and_reserved_to", unique: true
    t.index ["townhouse_area_id"], name: "index_bookings_on_townhouse_area_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "residents", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "townhouse_area_id"
    t.string "document", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document"], name: "index_residents_on_document"
    t.index ["townhouse_area_id"], name: "index_residents_on_townhouse_area_id"
  end

  create_table "townhouse_areas", force: :cascade do |t|
    t.string "name"
    t.string "area_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "property_type", default: "shared"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
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
    t.string "provider"
    t.string "uid"
    t.text "image"
    t.string "role", default: "resident"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "townhouse_areas"
  add_foreign_key "bookings", "users"
  add_foreign_key "residents", "townhouse_areas"
end
