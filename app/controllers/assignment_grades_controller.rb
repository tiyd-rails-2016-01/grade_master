class AssignmentGradesController < ApplicationController
  before_action :set_assignment_grade, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user

  # GET /assignment_grades
  # GET /assignment_grades.json
  def index
    @assignment_grades = find_grades
  end

  # GET /assignment_grades/1
  # GET /assignment_grades/1.json
  def show
    unless @assignment_grade.save
      render :new
    end
  end

  # GET /assignment_grades/new
  def new
    authenticate_teacher
    @assignment_grade = AssignmentGrade.new
  end

  # GET /assignment_grades/1/edit
  def edit
    authenticate_teacher
  end

  # POST /assignment_grades
  # POST /assignment_grades.json
  def create
    @assignment_grade = AssignmentGrade.new(assignment_grade_params)
    unless @assignment_grade.save
      render :new
    end
    student = Student.find(@assignment_grade.student_id)
    @assignment_grades = student.assignment_grades.reload
  end

  # PATCH/PUT /assignment_grades/1
  # PATCH/PUT /assignment_grades/1.json
  def update
    authenticate_teacher
    unless @assignment_grade.update(assignment_grade_params)
        format.html { render :edit}
    end

    @assignment_grades = AssignmentGrade.where(student_id: @assignment_grade.student_id)
  end

  # DELETE /assignment_grades/1
  # DELETE /assignment_grades/1.json
  def destroy
    student = Student.find(@assignment_grade.student_id)
    @assignment_grade.destroy
    if student.reload.assignment_grades.count > 0
      @assignment_grades = student.reload.assignment_grades
    else
      @assignment_grades = nil
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_grade
      @assignment_grade = AssignmentGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_grade_params
      params.require(:assignment_grade).permit(:grade, :assignment_name, :assignment_date, :student_id, :uploaded_file)
    end

    def find_grades
      if session[:person_type] == "Principal"
        AssignmentGrade.all
      elsif session[:person_type] == "Teacher"
        Student.find_by(teacher_id: User.find(session[:user_id])).assignment_grades
      elsif session[:person_type] == "Student"
        Student.find(User.find(session[:user_id]).person_id).assignment_grades
      else
        @parent = Parent.find(User.find(session[:user_id]).person_id)
        @parent.assignment_grades
      end
    end
end
