class ChangeUserIdColumnOnUserLicenseAreas < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_license_areas, :User_id, :bigint
    add_column :user_license_areas, :user_id, :bigint
  end
end
