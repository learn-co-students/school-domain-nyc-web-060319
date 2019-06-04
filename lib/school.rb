# code here!
require "pry"
class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.has_key?(grade) == false
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(number)
        @roster[number]
    end

    def sort()
        #@roster = @roster.sort |grade, people| grade }
        #binding.pry
        @roster.keys.each do |key, value|
            #binding.pry
            @roster[key] = @roster[key].sort!
        end
        @roster
    end
end