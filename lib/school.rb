class School

require "pry"

attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)
  if @roster.keys.include?(grade)
      #puts "key exists already"
      #binding.pry
      @roster[grade] << name
  else
      #puts "make new key"
      #binding.pry
      @roster[grade] = []
      @roster[grade] << name
  end
  return @roster
end

def grade(year)
  return @roster[year]
end

def sort
  newRoster = {}
   @roster.each do |grade, students|
     #puts students.sort.inspect
     newRoster[grade] = students.sort
     #puts newRoster
   end
   return newRoster
end

end


  # school = School.new("Bayside High School")
  # school.add_student("Jeff Baird", 10)
  # school.add_student("Blake Johnson", 10)
  # school.add_student("AC Slater", 9)
  #
  # puts school.roster
