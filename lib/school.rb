class School
    def initialize(name)
        @name = name
        @roster = {}      
    end

    attr_reader :roster

    def add_student(name, grade)
        if !@roster.keys.include?(grade)
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort()
        ret = {}
        @roster.each do |grade, name_array|
            ret[grade] = name_array.sort
        end
        ret
    end

end