class NonFuelTransaction < ActiveRecord::Base
  belongs_to :transactions
  belongs_to :product
end
