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

      t.timestamps
    end
  end
end
