class Employee < ActiveRecord::Base
  has_many :phone_numbers
  has_many :addresses
  belongs_to :manager, class_name: "Employee"

  def status
    if manager_id
      return "Regular Employee"
    else
      return "Manager"
    end
  end
end
