class StudentsController < ApplicationController

  def index
    arr = []
    students = Student.all
    if params[:name]
       arr << students.find_by(last_name: params[:name].capitalize())
       arr << students.find_by(first_name: params[:name].capitalize())
       render json: arr
    else
      render json: students
    end
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end

def last_name
  students = Student.find_by(params[:name])
  render json: students
end

end
