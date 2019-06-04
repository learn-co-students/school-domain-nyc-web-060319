# code here!
require 'pry'

class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.key?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(student_grade)
        return @roster[student_grade]
    end

    def sort
        newSchoolHash = {}
        allKeys = @roster.keys.sort
        allKeys.each do |keys|
            newSchoolHash[keys] = []
        end

        @roster.each do |grades , student_names|
            student_names = student_names.sort
            student_names.each do |names|
                newSchoolHash[grades] << names
            end
        end
        return newSchoolHash
    end
end

