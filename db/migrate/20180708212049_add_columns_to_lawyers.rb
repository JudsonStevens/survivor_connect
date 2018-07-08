class AddColumnsToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :state, :string
    add_column :lawyers, :country, :string
    add_column :lawyers, :zip_code, :integer
    remove_column :lawyers, :address
    add_column :lawyers, :street_address, :string
  end
end
