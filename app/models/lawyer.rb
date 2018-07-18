class Lawyer < ApplicationRecord
  has_many :lawyer_license_areas
  has_many :license_areas, through: :lawyer_license_areas

  geocoded_by :full_address

  after_validation :geocode, if: :address_or_zip_changed?

  def full_address
    [street_address, city, state, zip_code].compact.join(', ')
  end

  def address_or_zip_changed?
    street_address_changed? || city_changed? || state_changed? || zip_code_changed?
  end
end
