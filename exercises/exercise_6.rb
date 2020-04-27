require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 70)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 80)
@store2.employees.create(first_name: "NotJane", last_name: "NotSmith", hourly_rate: 7)
@store2.employees.create(first_name: "NotJohn", last_name: "NotDoe", hourly_rate: 8)

puts @store1.employees
puts @store2.employees