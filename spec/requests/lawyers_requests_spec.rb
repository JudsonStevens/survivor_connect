require 'rails_helper'

RSpec.describe 'User Requests' do
  before :each do
    @User1 = User.create!(name: 'Example', street_address: '15 Oak Drive', state: 'CO', zip_code: 12332, firm_name: 'Example Firm', phone_number: '202-252-3000', bio_info: 'New User in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 15)
    @User1.license_areas.create!(title: 'Denver, Colorado')
  end

  describe 'All Users' do
    it 'should return all Users' do
      get '/api/Users'

      data = JSON.parse(response.body)

      expect(data.first).to eq(json_with_soft_time(@User1))
    end
  end
end