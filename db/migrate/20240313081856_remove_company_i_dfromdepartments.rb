class RemoveCompanyIDfromdepartments < ActiveRecord::Migration[7.1]
  def change
    remove_column :departments, :company_id, :integer
  end
end
