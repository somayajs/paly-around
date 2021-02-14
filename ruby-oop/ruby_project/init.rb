#!usr/bin/env ruby
require_relative 'classes/person'
require_relative 'classes/animal'

person = Person.new
person.first_name = "ola"
person.last_name = "amigos"
puts person.full_name
puts person.intial_and_last
# puts person.get_intial   private method

puts "-----------"

animal = Animal.new({noise: "quak"})
# animal.noise = "quak"
p animal.noise

puts "-----------"

