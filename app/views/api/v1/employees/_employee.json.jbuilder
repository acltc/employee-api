json.id employee.id
json.first_name employee.first_name
json.last_name employee.last_name
json.email employee.email
json.birthday employee.birthdate
json.status employee.status

# Short hand syntax for regular methods:
json.(employee, :first_name, :last_name, :email, :birthdate, :status)

# Long hand syntax for dealing with associations:

json.phone_numbers employee.phone_numbers do |phone_number|
  json.number phone_number.number
  json.phone_type phone_number.phone_type
end

# Short hand syntax for associations:

# json.phone_numbers employee.phone_numbers, :number, :phone_type

json.addresses employee.addresses, :address_1, :address_2, :city, :state, :zip

if employee.manager
  json.manager employee.manager, :first_name, :last_name
end