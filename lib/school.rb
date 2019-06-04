# code here!
class School

    attr_accessor :roster, :name


    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
    #     @name = name
    #     @grade = grade
    #    if @roster.has_key?(grade)
    #         @roster[grade] = []
    #         @roster[grade] << name
    #    end
        roster[grade] ||= []
        roster[grade] << name

    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_list = {}
        roster.each do |grade, students|
            sorted_list[grade] = students.sort
        end
        sorted_list
    end
end
