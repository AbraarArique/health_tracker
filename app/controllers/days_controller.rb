class DaysController < ApplicationController
  def index
    @days = Day.all
    @day = Day.new
    @meal_data = []
    @meal_names = []
    @workout_data = []
    @workout_names = []
    @days.each do |i|
      i.meals.each do |x|
        @meal_names.push x.name
        @meal_data.push x.cal
      end
      i.workouts.each do |x|
        @workout_names.push x.name
        @workout_data.push x.cal
      end
    end
  end

  def show
    @day = get_day(params[:id])
    @meal_sum = @day.meals.sum('cal')
    @workout_sum = @day.workouts.sum('cal')
    @meal_names = []
    @meal_data = []
    @workout_names = []
    @workout_data = []
    @day.meals.each do |i|
      @meal_names.push i.name
      @meal_data.push i.cal
    end
    @day.workouts.each do |i|
      @workout_names.push i.name
      @workout_data.push i.cal
    end
  end

  def create
    @day = Day.new(days_params)
    if @day.save
      redirect_to root_path
    else
      render 'error'
    end
  end

  def update
    @day = get_day(params[:id])
    if @day.update(days_params)
      redirect_to day_path(@day)
    else
      render 'error'
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
