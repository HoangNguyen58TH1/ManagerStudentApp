$LOAD_PATH << '.'
require 'student_helper'

class Student
  include StudentHelper

  attr_accessor :name, :age, :address, :date_of_birth
  def initialize(hash_student)
    @name = hash_student[:name]
    @age = hash_student[:age]
    @address = hash_student[:address]
    @date_of_birth = hash_student[:date_of_birth]
  end

  def print_student
    puts "Name: #{name} - Age: #{age} - Address: #{address} - Date of birth: #{date_of_birth}"
  end
end


# s = Student.new({name: 'Hoang', age: -18, address: 'NT', date_of_birth: '20/08/1998'})
# puts s.print_student
# puts s.validate_age
# puts s.print_student
# puts '---'
# puts s

# Kernel.puts 6
# Kernel.puts 6.object_id
# Kernel.puts 6.even?
# Kernel.puts 6.odd?
# Kernel.puts 6.zero?
# Kernel.puts 6.class
# puts 6.class


# class A < Student

# end

# a = A.new({'a'=>'a'})
# puts a.instance_of? A
# puts a.instance_of? Student

# puts Student.ancestors
