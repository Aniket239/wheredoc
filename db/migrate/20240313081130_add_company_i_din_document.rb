class AddCompanyIDinDocument < ActiveRecord::Migration[7.1]
  def change
    add_column :departments ,:company_id, :integer
  end
end
