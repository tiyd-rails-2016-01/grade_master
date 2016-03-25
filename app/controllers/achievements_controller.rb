class AchievementsController < ApplicationController
  before_action :set_achievement, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_teacher

  # GET /Achievements
  def index
    @achievements = Achievement.all
    @students = Student.where(teacher_id: session[:user_id])
  end

  # GET /Achievements/1
  def show
  end

  # GET /Achievements/new
  def new
    @achievement = Achievement.new
  end

  # GET /Achievements/1/edit
  def edit
  end

  # POST /Achievements
  def create
    @achievement = Achievement.new(achievement_params)

    respond_to do |format|
      if @achievement.save
        format.html { redirect_to @achievement, notice: 'Achievement was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /Achievements/1
  def update

    respond_to do |format|
      if @achievement.update(achievement_params)
        format.html { redirect_to @achievement, notice: 'Achievement was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /Achievements/1
  def destroy
    @achievement.destroy
    respond_to do |format|
      format.html { redirect_to achievements_url, notice: 'Achievement was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achievement
      @achievement = Achievement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def achievement_params
      params.require(:achievement).permit(:name, :description, :points)
    end
end
