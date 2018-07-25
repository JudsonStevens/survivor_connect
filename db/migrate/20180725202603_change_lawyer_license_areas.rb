class ChangeLawyerLicenseAreas < ActiveRecord::Migration[5.2]
  def change
    rename_table :User_license_areas, :user_license_areas
  end
end
