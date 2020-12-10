# code here!
require 'pry'

class School
  attr_accessor :name, :roster, :grade
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
      if !@roster.key?(grade)
        @roster[grade] = []
        @roster[grade] << name
      else
        @roster[grade] << name
      end

    end

    def grade(grade)
      if @roster.key?(grade)
        @roster[grade]
      end
    end

    def sort
      @roster.each_value do |key|
        key.sort!
      end
      @roster

    end
end