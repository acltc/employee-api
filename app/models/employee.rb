class Employee < ActiveRecord::Base
  has_many :addresses
  has_many :phone_numbers
end
