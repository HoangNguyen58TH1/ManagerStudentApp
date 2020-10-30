module StudentPrintHelper
  def print_info_helper(students)
    students.each do |hash|
      hash.validate_age
      hash.print_student
    end
  end
end