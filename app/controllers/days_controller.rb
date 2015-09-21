class DaysController < ApplicationController
  def index
    @days = Day.all
    @day = Day.new
  end

  def show
    @day = get_day(params[:id])
    @meal_sum = @day.meals.sum('cal')
    @workout_sum = @day.workouts.sum('cal')
  end

  def create
    @day = Day.new(days_params)
    if @day.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @day = get_day(params[:id])
  end

  def update
    @day = get_day(params[:id])
    if @day.update(days_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @day = get_day(params[:id])
    @day.destroy
    redirect_to root_path
  end

  private

    def days_params
      params.require(:day).permit(:day)
    end

    def get_day(id)
      Day.find(id)
    end

end
