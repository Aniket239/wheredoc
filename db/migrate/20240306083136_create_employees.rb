class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :employee_email
      t.string :employee_password
      t.string :employee_department
      t.integer :employee_mobile_number

      t.timestamps
    end
  end
end
