class PrincipalsController < ApplicationController
  before_action :set_principal, only: [:show]
  before_action :authenticate_principal

  def index
    @principals = Principal.all
    @teachers = Teacher.all
    @students = Student.all
    @parents = Parent.all
    @assignment_grades = AssignmentGrade.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principal
      @principal = Principal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def principal_params
      params.require(:principal).permit(:email, :first_name, :last_name)
    end
end
