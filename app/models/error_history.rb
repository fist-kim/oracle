class ErrorHistory < ApplicationRecord
  validates_presence_of :region_code, :year_month, :region_kr, :data_type
end
