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

ActiveRecord::Schema.define(version: 2019_02_05_014418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distros", force: :cascade do |t|
    t.string "name"
    t.bigint "package_id"
    t.text "description"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_distros_on_package_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "install_distro_infos", force: :cascade do |t|
    t.bigint "people_id"
    t.bigint "trouble_id"
    t.bigint "distro_id"
    t.boolean "installed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["distro_id"], name: "index_install_distro_infos_on_distro_id"
    t.index ["people_id"], name: "index_install_distro_infos_on_people_id"
    t.index ["trouble_id"], name: "index_install_distro_infos_on_trouble_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "city_id"
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "packages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.bigint "location_id"
    t.bigint "event_id"
    t.string "age"
    t.bigint "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_people_on_event_id"
    t.index ["gender_id"], name: "index_people_on_gender_id"
    t.index ["location_id"], name: "index_people_on_location_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "troubles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cities", "states"
  add_foreign_key "distros", "packages"
  add_foreign_key "install_distro_infos", "distros"
  add_foreign_key "install_distro_infos", "people", column: "people_id"
  add_foreign_key "install_distro_infos", "troubles"
  add_foreign_key "locations", "cities"
  add_foreign_key "people", "events"
  add_foreign_key "people", "genders"
  add_foreign_key "people", "locations"
  add_foreign_key "states", "countries"
end
