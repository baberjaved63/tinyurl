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

ActiveRecord::Schema.define(version: 2023_05_03_121140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "url_tokens", force: :cascade do |t|
    t.string "token"
    t.text "url"
    t.integer "url_visits_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["token"], name: "index_url_tokens_on_token", unique: true
  end

  create_table "url_visits", force: :cascade do |t|
    t.bigint "url_token_id", null: false
    t.string "ip_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["url_token_id"], name: "index_url_visits_on_url_token_id"
  end

  add_foreign_key "url_visits", "url_tokens"
end
