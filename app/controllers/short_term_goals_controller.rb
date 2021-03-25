class ShortTermGoalsController < ApplicationController
  before_action :set_short_term_goal, only: %i[ show edit update destroy ]

  # GET /short_term_goals or /short_term_goals.json
  def index
    @short_term_goals = ShortTermGoal.all
  end

  # GET /short_term_goals/1 or /short_term_goals/1.json
  def show
  end

  # GET /short_term_goals/new
  def new
    @short_term_goal = ShortTermGoal.new
  end

  # GET /short_term_goals/1/edit
  def edit
  end

  # POST /short_term_goals or /short_term_goals.json
  def create
    @short_term_goal = ShortTermGoal.new(short_term_goal_params)

    respond_to do |format|
      if @short_term_goal.save
        format.html { redirect_to @short_term_goal, notice: "Short term goal was successfully created." }
        format.json { render :show, status: :created, location: @short_term_goal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @short_term_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /short_term_goals/1 or /short_term_goals/1.json
  def update
    respond_to do |format|
      if @short_term_goal.update(short_term_goal_params)
        format.html { redirect_to @short_term_goal, notice: "Short term goal was successfully updated." }
        format.json { render :show, status: :ok, location: @short_term_goal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @short_term_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /short_term_goals/1 or /short_term_goals/1.json
  def destroy
    @short_term_goal.destroy
    respond_to do |format|
      format.html { redirect_to short_term_goals_url, notice: "Short term goal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_term_goal
      @short_term_goal = ShortTermGoal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def short_term_goal_params
      params.require(:short_term_goal).permit(:title, :detail, :experience, :image)
    end
end
