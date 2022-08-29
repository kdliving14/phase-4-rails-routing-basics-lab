class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        # get all Student datatype, order them by grade in descending order
        render json: students
    end

    def highest_grade
        student = Student.order(grade: :desc).first 
        render json: student
    end
end
