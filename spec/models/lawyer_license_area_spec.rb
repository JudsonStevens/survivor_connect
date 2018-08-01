require 'rails_helper'

RSpec.describe LawyerLicenseArea, type: :model do
  describe 'relationships' do
    it { should belong_to(:lawyer)}
    it { should belong_to(:license_area)}
  end
end
