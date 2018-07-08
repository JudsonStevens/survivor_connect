# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

lawyer1 = Lawyer.create!(name: 'Example', street_address: '15 Oak Drive', state: 'CO', zip_code: 12332, firm_name: 'Example Firm', phone_number: '202-252-3000', bio_info: 'New lawyer in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 15)
lawyer1.license_areas.create!(title: 'Denver, Colorado')