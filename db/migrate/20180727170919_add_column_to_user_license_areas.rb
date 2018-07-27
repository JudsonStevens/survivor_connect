class AddColumnToUserLicenseAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :user_license_areas, :user_id, :integer
  end
end
