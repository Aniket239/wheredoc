class RemoveDepartmentFromEmployees < ActiveRecord::Migration[7.1]
  def change
    remove_column :employees, :employee_department, :string
  end
end
