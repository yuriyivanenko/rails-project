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

ActiveRecord::Schema[7.1].define(version: 2024_09_03_152254) do
  create_table "installers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "territory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["territory_id"], name: "index_installers_on_territory_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_number"
    t.string "project_manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "territories", force: :cascade do |t|
    t.string "name"
    t.string "territory_coding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "installer_id"
    t.integer "territory_id"
    t.string "description"
    t.decimal "amount", precision: 10, scale: 2
    t.integer "project_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["installer_id"], name: "index_transactions_on_installer_id"
    t.index ["project_id"], name: "index_transactions_on_project_id"
    t.index ["territory_id"], name: "index_transactions_on_territory_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "territory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["territory_id"], name: "index_users_on_territory_id"
  end

  add_foreign_key "installers", "territories"
  add_foreign_key "transactions", "installers"
  add_foreign_key "transactions", "projects"
  add_foreign_key "transactions", "territories"
  add_foreign_key "users", "territories"
end
