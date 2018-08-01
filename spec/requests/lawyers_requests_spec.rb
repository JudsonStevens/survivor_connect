require 'rails_helper'

RSpec.describe 'Lawyer Requests' do
  before :each do
    @lawyer1 = Lawyer.create!(name: 'Example', street_address: '15 Oak Drive', state: 'CO', zip_code: 12332, firm_name: 'Example Firm', phone_number: '202-252-3000', bio_info: 'New lawyer in the area, much experience', signal_number: '202-311-3222', pro_bono_hours: 15, latitude: 7.380, longitude: -120.988, country: 'USA', city: 'Denver')
    @lawyer1.license_areas.create!(title: 'Denver, Colorado')
  end

  describe 'All lawyers' do
    it 'should return all lawyers' do
      get '/api/lawyers'

      data = JSON.parse(response.body)

      expect(data.first).to eq(json_with_soft_time(@lawyer1))
    end
  end
end