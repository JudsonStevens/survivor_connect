require 'rails_helper'

RSpec.describe Lawyer, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'instance methods' do
    before(:each) do 
      @lawyer = Lawyer.create!(name: 'Attorney', firm_name: 'LLP', phone_number: '555-555-5555', 
                    bio_info: 'stuff', signal_number: '555-555-5555', pro_bono_hours: 5, 
                    latitude: 39.739236, longitude: -104.990251, state: 'CO', country: 'USA', 
                    zip_code: 80202, city: "Denver", 
                    street_address: '1331 17th St LL100') 
                  end
      it 'returns full address' do
        # binding.pry
        expect(@lawyer.full_address).to eq('1331 17th St LL100, Denver, CO, 80202')
    end
  end
end
