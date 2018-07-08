class LicenseArea < ApplicationRecord
  has_many :lawyer_license_areas
  has_many :lawyers, through: :lawyer_license_areas
end
