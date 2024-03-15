class Adddepatmentinsetup < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :department, :string
  end
end
