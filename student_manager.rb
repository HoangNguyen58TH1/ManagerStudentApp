$LOAD_PATH << '.'
require 'student_print_helper'

class StudentManager
  include StudentPrintHelper

  attr_accessor :students
  def initialize(students)
    @students = students
  end

  def search_student(name_student)
    puts name_student
    result = students.select do |hash|
      (hash.name).downcase.include? name_student.downcase
    end
    puts "There are #{result.size} student found"
    result.each do |item|
      item.print_student
    end
  end

  def print_info
    print_info_helper(students)
  end

  def statistic
    num = students.count { |items| items.age > 20}
    puts "There are #{num} students are over than 20 years old."
  end

  def classify
    basic, advanced = 0, 0
    arr_basic, arr_advanced = [], []
    students.each do |hash|
      if hash.class == StudentBasic
        basic += 1
        arr_basic << hash
      else
        advanced += 1
        arr_advanced << hash
      end
    end

    puts "Have #{basic} Student Basic"
    print_info_helper(arr_basic)
    puts '-------------------------'
    puts "Have #{advanced} Student Advanced"
    print_info_helper(arr_advanced)
  end
end
