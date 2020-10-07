require 'pry';

class School

    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name;
        @roster = {};
    end

    def add_student(student_name, grade)

        if !@roster[grade] then
            @roster[grade] = [];
        end

        @roster[grade].push(student_name);
    end

    def grade(grade)
        @roster[grade];
    end

    def sort   
        hash=  {}
        @roster.sort.collect{
            |index|
            hash[index[0]] = index[1].sort
        }
        hash
    end


end
