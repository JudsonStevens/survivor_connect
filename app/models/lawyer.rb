class Lawyer < ApplicationRecord
  has_many :lawyer_license_areas
  has_many :license_areas, through: :lawyer_license_areas
end
