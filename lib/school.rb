require 'pry'

class School

    attr_accessor :roster, :student_name, :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        #
        #
        # @grade = grade
        # @student_name = student_name 
        
        if @roster.include?(grade)
            @roster[grade] << student_name
        else 
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
     
    end

    def sort
        @roster.each do |grade, student_array|
            @roster[grade].sort!
        end
    end


end

School.new("Test School")
