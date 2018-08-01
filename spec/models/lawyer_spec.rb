require 'rails_helper'

RSpec.describe Lawyer, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'relationships' do
    it {should have_many(:lawyer_license_areas)}
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:firm_name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:bio_info) }
    it { should validate_presence_of(:signal_number) }
    it { should validate_presence_of(:pro_bono_hours) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:longitude) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:street_address) }
  end


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
      it 'returns true if address or zip code has been changed' do
        expect(@lawyer.zip_code).to eq(80202)
        @lawyer.zip_code = 80205
        expect(@lawyer.address_or_zip_changed?).to be(true)

        expect(@lawyer.street_address).to eq('1331 17th St LL100')
        @lawyer.street_address = '1331 17th St'
        expect(@lawyer.address_or_zip_changed?).to be(true)
      end
  end
end
