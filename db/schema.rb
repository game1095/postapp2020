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

ActiveRecord::Schema.define(version: 2020_09_03_024131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bags", force: :cascade do |t|
    t.string "number"
    t.bigint "outbound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outbound_id"], name: "index_bags_on_outbound_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "topic"
    t.string "comment"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internals", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.date "sent_date"
    t.string "name"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "internal_number"
  end

  create_table "outbounds", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.date "sent_date"
    t.string "strap"
    t.string "car"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "outbound_number"
    t.string "name"
    t.text "remark"
  end

  create_table "parcels", force: :cascade do |t|
    t.string "number"
    t.bigint "internal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["internal_id"], name: "index_parcels_on_internal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bags", "outbounds"
  add_foreign_key "parcels", "internals"
end
