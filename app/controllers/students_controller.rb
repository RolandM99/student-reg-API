class StudentsController < ApplicationController
  def index
    @students = Student.all
    render json: @students, status: :ok
  end

  def new
    @student = Student.find(params[:id]).id
    @student = Student.new
  end

  def show
    @student = Student.find_by(student_id: params[:id])
    render json: @student, status: :ok
  end

  def create
    @student = Student.new(student_params)
    @student.student_id = Student.find_by_id(params[:student_id]).id
    return render json: @student.errors, status: :unprocessable_entity unless @student.save

    render json: @student, status: :created
  end

  private

  def student_params
    params.require(:student).permit(:student_id, :first_name, :age, :gender, :academic_year)
  end
end
