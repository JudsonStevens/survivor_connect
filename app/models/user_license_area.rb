class UserLicenseArea < ApplicationRecord
  belongs_to :user
  belongs_to :license_area
end
