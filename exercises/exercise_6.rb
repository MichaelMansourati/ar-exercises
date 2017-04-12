require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Bon Jovi", hourly_rate: 60)
@store1.employees.create(first_name: "jrk", last_name: "brink", hourly_rate: 60)

@store2.employees.create(first_name: "Bonko", last_name: "Changus", hourly_rate: 60)
@store2.employees.create(first_name: "Guy", last_name: "Fieri", hourly_rate: 60)
@store2.employees.create(first_name: "Boy", last_name: "Wonder", hourly_rate: 60)

# Your code goes here ...
