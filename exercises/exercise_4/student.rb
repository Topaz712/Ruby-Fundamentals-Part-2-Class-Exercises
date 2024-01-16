class Student

  def initialize(name)
    @name = name
    @grades = []
  end

  def add_grade(grade)
    grades << grade
  end

  def calculate_average_grade
      sum = @grades.reduce(0, :+)
      average = sum / @grades.length.to_f unless @grades.empty?
      average || 0 
    end
  end


end