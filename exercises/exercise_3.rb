require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

@store3 = Store.find_by(id: 3)

# Adding code in #'s below to add employees before destroy so error can be raised - otherwise does not work since employees do not exist yet.
########################
Store.has_many :employees
Employee.belongs_to :store
@store3.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 80)
########################

@store3.destroy

num_stores = Store.count

puts num_stores