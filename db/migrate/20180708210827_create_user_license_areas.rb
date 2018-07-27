class CreateLawyerLicenseAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyer_license_areas do |t|
      t.references :license_area, foreign_key: true

      t.timestamps
    end
  end
end