class PrincipalsController < ApplicationController
  before_action :set_principal, only: [:show, :edit, :update, :destroy]

  # GET /principals
  # GET /principals.json
  def index
    @principals = Principal.all
  end

  # GET /principals/1
  # GET /principals/1.json
  def show
  end

  # GET /principals/new
  

  # GET /principals/1/edit
  def edit
  end

  # POST /principals
  # POST /principals.json


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
