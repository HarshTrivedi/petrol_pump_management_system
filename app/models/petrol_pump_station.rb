class PetrolPumpStation < ActiveRecord::Base
  has_many :employees
  has_many :users
  has_many :tanks
  has_many :customers
end
