# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

User1 = User.create!(email: 'Bob@gmail.com', password: 'newpassword', name: 'Example', address: '2434 W 44th Ave, Denver CO 80211', firm_name: 'Example Firm', phone_number: '202-252-3000', bio_info: 'New User in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 5)
User2 = User.create!(email: 'Bob2@gmail.com', password: 'newpassword', name: 'Example', address: '7870 W 8th Dr, Arvada, CO 80005', firm_name: 'Example2 Firm', phone_number: '202-252-3000', bio_info: 'New User in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 12)
User3 = User.create!(email: 'Bob3@gmail.com', password: 'newpassword', name: 'Example', address: '24260 Hwy 1032, Denham Springs LA 70726', firm_name: 'Example3 Firm', phone_number: '202-252-3000', bio_info: 'New User in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 10)
User4 = User.create!(email: 'Bob4@gmail.com', password: 'newpassword', name: 'Example', address: '1777 W 38th Ave, Denver CO 80211', firm_name: 'Example4 Firm', phone_number: '202-252-3000', bio_info: 'New User in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 15)
User1.license_areas.create!(title: 'Denver, Colorado')
User2.license_areas.create!(title: 'Denver, Colorado')
User3.license_areas.create!(title: 'Denver, Colorado')
User4.license_areas.create!(title: 'Denver, Colorado')