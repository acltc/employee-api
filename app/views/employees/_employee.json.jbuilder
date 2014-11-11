json.first_name employee.first_name
json.last_name employee.last_name
json.email employee.email
json.birthdate employee.birthdate

json.addresses employee.addresses, :address_1, :address_2, :city, :state, :zip
json.phone_numbers employee.phone_numbers, :number, :phone_type

if employee.manager
  json.manager employee.manager, :first_name, :last_name
end