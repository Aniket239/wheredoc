ActiveRecord::Schema[7.1].define(version: 2024_03_06_125314) do
  create_table "documents", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "doc_id"
    t.string "doc_name"
    t.float "doc_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_name"
    t.string "employee_email"
    t.string "employee_password"
    t.string "employee_department"
    t.integer "employee_mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
