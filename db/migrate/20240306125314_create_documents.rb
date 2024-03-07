class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.integer :employee_id
      t.integer :doc_id
      t.string :doc_name
      t.float :doc_amount

      t.timestamps
    end
  end
end
