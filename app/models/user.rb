class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  extend FriendlyId
  friendly_id :email, use: :slugged
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  has_many :user_license_areas
  has_many :license_areas, through: :user_license_areas

  geocoded_by :address

  before_save :generate_slug
  after_validation :geocode, if: :address_or_zip_changed?

  def full_address
    [street_address, city, state, zip_code].compact.join(', ')
  end

  def address_or_zip_changed?
    address_changed?
  end

  def generate_slug
    self.slug = self.email.split('@')[0]
  end
end
