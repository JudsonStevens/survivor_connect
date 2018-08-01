require 'rails_helper'

RSpec.describe 'User Requests' do
  before :each do
    @User1 = User.create!(name: 'Example', email: 'Bob@gmail.com', password: 'password', address: '15 Oak Drive, CO 12332', firm_name: 'Example Firm', phone_number: '202-252-3000', bio_info: 'New User in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 15)
    @User1.license_areas.create!(title: 'Denver, Colorado')
  end

  describe 'All Users' do
    it 'should return all users' do
      get '/api/users'

      data = JSON.parse(response.body)

      expect(data.first['name']).to eq(@User1.name)
      expect(data.first['email']).to eq(@User1.email)
      expect(data.first['address']).to eq(@User1.address)
      expect(data.first['firm_name']).to eq(@User1.firm_name)
      expect(data.first['bio_info']).to eq(@User1.bio_info)
      expect(data.first['phone_number']).to eq(@User1.phone_number)
      expect(data.first['pro_bono_hours']).to eq(@User1.pro_bono_hours)
    end
  end
end