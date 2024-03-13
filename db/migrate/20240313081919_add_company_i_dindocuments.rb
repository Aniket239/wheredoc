class AddCompanyIDindocuments < ActiveRecord::Migration[7.1]
  def change
    add_column :documents, :company_id, :integer
  end
end
