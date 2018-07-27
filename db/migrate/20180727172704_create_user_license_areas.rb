class CreateUserLicenseAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :user_license_areas do |t|
      t.references :user, foreign_key: true
      t.references :license_area, foreign_key: true
    end
  end
end
