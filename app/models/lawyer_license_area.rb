class LawyerLicenseArea < ApplicationRecord
  belongs_to :lawyer
  belongs_to :license_area
end
