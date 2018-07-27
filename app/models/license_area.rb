class LicenseArea < ApplicationRecord
  has_many :user_license_areas
  has_many :users, through: :user_license_areas
end
