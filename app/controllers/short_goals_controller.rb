class ShortGoalsController < ApplicationController
  before_action :set_short_goal, only: %i[ show edit update destroy ]

  def index
    @short_goals = ShortGoal.all
  end

  def show
  end

  def new
    @short_goal = ShortGoal.new
  end

  def edit
  end

  def create
    @short_goal = ShortGoal.new(short_goal_params)
    @short_goal.experience = 0.5

    respond_to do |format|
      if @short_goal.save
        format.html { redirect_to @short_goal, notice: "Short goal was successfully created." }
        format.json { render :show, status: :created, location: @short_goal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @short_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @short_goal.update(short_goal_params)
        format.html { redirect_to @short_goal, notice: "Short goal was successfully updated." }
        format.json { render :show, status: :ok, location: @short_goal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @short_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @short_goal.destroy
    respond_to do |format|
      format.html { redirect_to short_goals_url, notice: "Short goal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_short_goal
      @short_goal = ShortGoal.find(params[:id])
    end

    def short_goal_params
      params.require(:short_goal).permit(:title, :detail, :experience)
      # params.require(:short_goal).permit(:title, :detail, :experience, images: [])
    end
end
