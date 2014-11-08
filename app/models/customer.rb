class Customer < ActiveRecord::Base
  belongs_to :petrol_pump_station
  has_many :vehicles
  has_many :transactions
end
