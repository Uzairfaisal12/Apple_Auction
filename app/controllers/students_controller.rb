class StudentsController < ApplicationController

before_action :find_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    respond_to do |f|
      if @student.save
        f.html { redirect_to @student, notice: "Student was successfully created." }
        f.json { render :show, status: :created, location: @student }
      else
        f.html { render :new, status: :unprocessable_entity }
        f.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @student.destroy
    redirect_to root_path
  end


 def update
  if @student.update(post_params)
    redirect_to @student
  else
    render 'edit'
  end
 end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def post_params
    params.require(:student).permit(:name, :number)
  end

end
