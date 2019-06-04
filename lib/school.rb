# code here!
class School

    attr_accessir :roster


    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        hash = {}
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
       if @roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade] << name
       end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort

    end
end
