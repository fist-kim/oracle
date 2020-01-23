class RawData < ApplicationRecord
  validates_presence_of :region_code, :region_kr, :year_month, :transaction_year, :transaction_month, :transaction_day, :apartment_name, :dong, :space, :price, :address_code, :built_year
end