class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.string :address
      t.string :firm_name
      t.string :phone_number
      t.text :bio_info
      t.string :signal_number
      t.integer :pro_bono_hours
      t.st_point :location_lonlat, geographic: true

      t.timestamps
    end
    add_index :lawyers, :location_lonlat, using: :gist
  end
end
