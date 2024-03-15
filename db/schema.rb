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

ActiveRecord::Schema[7.1].define(version: 2024_03_15_071813) do
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.integer "employee_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "doc_id"
    t.string "doc_name"
    t.float "doc_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "submission_date"
    t.integer "department_id"
    t.integer "company_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_name"
    t.string "employee_email"
    t.string "employee_password"
    t.integer "employee_mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "department"
  end

end
