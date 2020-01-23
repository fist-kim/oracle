class ApartmentPriceValue < ApplicationRecord
  belongs_to :apartment
  validates_presence_of :apartment_id, :trade_price, :value, :value_gap, :year, :month
end