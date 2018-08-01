class Lawyer < ApplicationRecord
  has_many :lawyer_license_areas
  has_many :license_areas, through: :lawyer_license_areas

  validates :name, presence: true
  validates :firm_name, presence: true
  validates :phone_number, presence: true
  validates :bio_info, presence: true
  validates :signal_number, presence: true
  validates :pro_bono_hours, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :street_address, presence: true

  geocoded_by :full_address

  after_validation :geocode, if: :address_or_zip_changed?

  def full_address
    [street_address, city, state, zip_code].compact.join(', ')
  end

  def address_or_zip_changed?
    street_address_changed? || city_changed? || state_changed? || zip_code_changed?
  end
end
