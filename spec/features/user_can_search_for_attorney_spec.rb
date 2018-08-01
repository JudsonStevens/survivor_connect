require 'rails_helper'


describe 'visitor can see home page content' do
  before(:each) do 
    @lawyer = Lawyer.create!(name: 'Attorney', firm_name: 'LLP', phone_number: '555-555-5555', 
                  bio_info: 'stuff', signal_number: '555-555-5555', pro_bono_hours: 5, 
                  latitude: 39.739236, longitude: -104.990251, state: 'CO', country: 'USA', 
                  zip_code: 80202, city: "Denver", 
                  street_address: '1331 17th St LL100') 
                end
  xit 'should return search landing page with nav bar and footer' do
    visit '/search_results'

    expect(page).to have_content("LLP")
  end
end