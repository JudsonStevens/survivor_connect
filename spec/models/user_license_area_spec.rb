require 'rails_helper'

RSpec.describe UserLicenseArea, type: :model do
  describe 'relationships' do
    it { should belong_to(:user)}
    it { should belong_to(:license_area)}
  end
end