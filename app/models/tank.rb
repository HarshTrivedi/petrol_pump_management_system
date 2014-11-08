class Tank < ActiveRecord::Base
  belongs_to :petrol_pump_station
  has_many :machines
  has_many :fuel_stocks
end
