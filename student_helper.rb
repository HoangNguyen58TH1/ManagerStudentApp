module StudentHelper
  def validate_age
    @age = 0 if @age < 0
  end
end
