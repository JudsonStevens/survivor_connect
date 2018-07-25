class Lawyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  has_many :lawyer_license_areas
  has_many :license_areas, through: :lawyer_license_areas

  geocoded_by :address

  after_validation :geocode, if: :address_or_zip_changed?

  def full_address
    [street_address, city, state, zip_code].compact.join(', ')
  end

  def address_or_zip_changed?
    address_changed?
  end
end
