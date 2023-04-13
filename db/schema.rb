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

ActiveRecord::Schema[7.0].define(version: 2023_04_13_204901) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "code_ibge"
    t.string "name_pt_BR"
    t.string "name_en"
    t.string "name_es"
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "conductors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "full_name"
    t.string "nickname"
    t.bigint "cpf"
    t.text "bio"
    t.date "birthday"
    t.boolean "qualified"
    t.bigint "inspection_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inspection_id"], name: "index_conductors_on_inspection_id"
  end

  create_table "countries", force: :cascade do |t|
    t.integer "code"
    t.string "name_pt_BR"
    t.string "name_en"
    t.string "name_es"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspections", force: :cascade do |t|
    t.integer "code"
    t.string "motive_apprehension"
    t.string "address_full"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "neighborhood"
    t.text "observations"
    t.integer "situation"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_inspections_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "full_name"
    t.string "nickname"
    t.bigint "cpf"
    t.integer "number"
    t.text "bio"
    t.date "birthday"
    t.string "avatar"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "states", force: :cascade do |t|
    t.integer "code_ibge"
    t.string "abbreviation"
    t.string "name_pt_BR"
    t.string "name_en"
    t.string "name_es"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "kind"
    t.boolean "qualified"
    t.string "brand"
    t.string "model"
    t.string "color"
    t.string "state_name"
    t.string "city_name"
    t.string "plate"
    t.string "tachometer"
    t.string "chassi"
    t.string "engine_number"
    t.bigint "brand_id"
    t.bigint "state_id"
    t.bigint "city_id"
    t.bigint "conductor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_vehicles_on_brand_id"
    t.index ["city_id"], name: "index_vehicles_on_city_id"
    t.index ["conductor_id"], name: "index_vehicles_on_conductor_id"
    t.index ["state_id"], name: "index_vehicles_on_state_id"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "conductors", "inspections"
  add_foreign_key "inspections", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "states", "countries"
  add_foreign_key "vehicles", "brands"
  add_foreign_key "vehicles", "cities"
  add_foreign_key "vehicles", "conductors"
  add_foreign_key "vehicles", "states"
end
