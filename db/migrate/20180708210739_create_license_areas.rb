class CreateLicenseAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :license_areas do |t|
      t.string :title

      t.timestamps
    end
  end
end
