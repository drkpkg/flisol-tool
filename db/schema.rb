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

ActiveRecord::Schema.define(version: 2019_02_04_044107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", limit: 128
    t.string "session_token", limit: 128
    t.datetime "current_sign_in_at"
    t.string "current_sign_in_ip", limit: 128
    t.datetime "last_sign_in_at"
    t.string "last_sign_in_ip", limit: 128
    t.integer "sign_in_count"
    t.integer "failed_logins_count", default: 0
    t.datetime "lock_expires_at"
    t.datetime "last_access_at"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["password_reset_token"], name: "index_users_on_password_reset_token"
    t.index ["session_token"], name: "index_users_on_session_token"
  end

end
