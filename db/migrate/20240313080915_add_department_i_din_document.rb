class AddDepartmentIDinDocument < ActiveRecord::Migration[7.1]
  def change
    add_column :documents, :department_id, :integer
  end
end
