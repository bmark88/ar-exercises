require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

#This should be a valid db creation and return true since it belongs to a store, has a first and last name, and an hourly_rate between 40 and 200.
puts @store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 80).valid?

puts Store.create(name: "MyNewStore", annual_revenue: "0", mens_apparel: true, womens_apparel: true).errors.full_messages

puts "~~~~~~~~~~~~~~~~~~~"
puts "Name your new store!"
new_store = gets.chomp
store99 = Store.create(name: new_store)

puts store99.errors.full_messages