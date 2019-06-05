require "pry"

class School
attr_reader :roster, :name, :grade

    def initialize(school_name = "")
    @roster = {}
    end

    def add_student(name, grade)
        if !@roster.has_key?(grade)
        @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade_num)
        @roster[grade_num]
        # @roster.each do |grade|
        #     if grade == "grade_num"
        #         binding.pry
        #         return @roster[grade_num]
        #     end
        # end
    end

    def sort
        @roster.each do |grade, name|
            name.sort!
        end
    end

end

@school = School.new("Test")