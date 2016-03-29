class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_principal_or_teacher

  # GET /students
  # GET /students.json
  def index
    if session[:person_type] == "Teacher"
      @students = Student.where(teacher_id: params[:id])
    elsif session[:person_type] == "Principal"
      @students = Student.all
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  def grades
    @student = Student.find(params[:id])
    if @student.assignment_grades.count > 0
      @assignment_grades = @student.assignment_grades.all
    end
  end
  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    @assignment_grades = @student.assignment_grades.all
    @achievements_list = Achievement.all
    @student = Student.find(params[:id])
    @student.assignment_grades.build
    @student.student_achievements.build
  end

  def edit_achievements
    @student = Student.find(params[:id])
    @achievements_list = Achievement.all
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    unless @student.save
      render :new
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update

    if params[:achievements]
      achievements = params[:achievements]
        achievements.each do |a|
          new_achievement = Achievement.find(a[0].to_i)
          if a[1] == "1" && !@student.achievements.pluck(:name).include?(new_achievement.name)
            @student.achievements << new_achievement
          elsif a[1] == "0" && @student.achievements.pluck(:name).include?(new_achievement.name)
            @student.achievements.delete(new_achievement)
          end
      end
    end

    unless @student.update(student_params)
      format.html { render :edit }
    end
    @students = Student.all
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy

    @students = Student.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name, :teacher_id, assignment_grades_attributes: [:id, :grade, :assignment_name, :assignment_date, :student_id, :_destroy])
    end
end
