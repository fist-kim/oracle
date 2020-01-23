class Apartment < ApplicationRecord
  has_many :apartment_price_values
  validates_presence_of :region_code, :region_kr, :dong, :apartment_name, :address_code, :space, :built_year
end