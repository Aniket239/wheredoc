class AddDateToDocuments < ActiveRecord::Migration[7.1]
  def change
    add_column :documents, :submission_date, :date
  end
end
