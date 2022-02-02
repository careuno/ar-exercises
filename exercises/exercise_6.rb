require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end 


class Employee
  belongs_to :store
end 

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Karen", last_name: "Ngo", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Leung", hourly_rate: 60)
@store2.employees.create(first_name: "Bob", last_name: "Baker", hourly_rate: 60)
@store2.employees.create(first_name: "Joe", last_name: "Brown", hourly_rate: 60)
@store2.employees.create(first_name: "Carol", last_name: "Johnson", hourly_rate: 60)