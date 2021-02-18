require 'pry'

class School

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)   
  if @roster[grade]
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
     end
   end
   
   def grade(grade)
    @roster[grade]
  end
  def sort 
    @roster.each_value do |value|
      value.sort!
    end
  end

end

