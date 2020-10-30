$LOAD_PATH << '.'
require 'student'
require 'student_manager'
require 'student_basic'
require 'student_advanced'

arr_student = [
  { name: 'Hoang', age: 22, address: 'Nha Trang', date_of_birth: Time.local(1998, 8, 20), mode: "basic", years: 3, score: 5.5 },
  { name: 'Linh', age: 23, address: 'Diên Khánh', date_of_birth: Time.local(1998, 1, 1), mode: "advanced", years: 4, score: 7.5, certificate: 'yes' },
  { name: 'Thiên', age: -24, address: 'Phú Yên', date_of_birth: Time.local(1998, 2, 2), mode: "advanced", years: 4, score: 8.5, certificate: 'yes' }
]

students = []
arr_student.each do |hash|
  students << (hash[:mode] == 'basic' ? StudentBasic.new(hash) : StudentAdvanced.new(hash))
end

# student_manager = StudentManager.new(students)
# student_manager.print_info
# student_manager.statistic
# print 'Enter name student: '
# name_student = gets.chomp
# student_manager.search_student(name_student)

# student_manager = StudentManager.new(students)
# student_manager.print_info
# student_manager.statistic

student_manager = StudentManager.new(students)
student_manager.print_info()
student_manager.classify