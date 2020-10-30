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
