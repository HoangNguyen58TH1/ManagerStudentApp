$LOAD_PATH << '.'
require 'student'

class StudentBasic < Student
  attr_accessor :years, :score
  def initialize(hash_student)
    super(hash_student)
    @years = hash_student[:years]
    @score = hash_student[:score]
  end

  def print_student
    puts "Name: #{name} - Age: #{age} - Address: #{address} - Date of birth: #{date_of_birth} - Years: #{years} - Score: #{score}"
  end
end