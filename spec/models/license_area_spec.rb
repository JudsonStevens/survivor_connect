require 'rails_helper'

RSpec.describe LicenseArea, type: :model do
  describe 'relationships' do
    it {should have_many(:lawyer_license_areas)}
  end
end
