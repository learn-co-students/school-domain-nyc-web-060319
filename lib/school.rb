# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster 
      @roster
    end
  
    def add_student(s_name, s_grade)
        #If grade doesn't exist, make new k-v pair
        #If it DOES exist, add to student_arr
        if @roster.include?(s_grade)
            @roster[s_grade] << s_name
        else
            #add_student("Person", 10) --> {10 => ["Person"]}
            @roster[s_grade] = [s_name]
        end
    
        #   if @roster.include?(s_grade) 
    #     @roster[s_grade] << s_name
    #   else
    #     @roster[s_grade] = [] << s_name
    #   end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
      @roster.each do |grade, student_arr| #iterate thru roster hash...
        # @roster[grade].sort! #for every grade, sort student arr permanently
        @roster[grade].sort!
      end
      p @roster #return altered roster
    end
end