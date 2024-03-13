class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments do |t|
      t.integer :employee_id
      t.string :name

      t.timestamps
    end
  end
end
