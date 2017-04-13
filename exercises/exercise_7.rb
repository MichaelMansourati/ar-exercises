require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validates :name, length: { minimum: 3 }
  validate :error_method

  def error_method
    errors.add(:annual_revenue, "annual_revenue must be submitted and must be 0 or greater")
  end
end

@store = Store.first.name

puts @store

store_create = Store.new(name: @store)
puts store_create.valid?

puts store_create.errors[:annual_revenue]

# Your code goes here ...
