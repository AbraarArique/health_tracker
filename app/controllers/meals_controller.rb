class MealsController < ApplicationController
  def show
    @day = Day.find(params[:day_id])
    @meal = @day.meals.find(params[:id])
  end

  def create
    @day = Day.find(params[:day_id])
    @meal = @day.meals.build(meals_params)
    if @meal.save
      redirect_to day_path(params[:day_id])
    else
      render 'error'
    end
  end

  def update
    @day = Day.find(params[:day_id])
    @meal = @day.meals.find(params[:id])
    if @meal.update(meals_params)
      redirect_to day_path(params[:day_id])
    else
      render 'error'
    end
  end

  def destroy
    @day = Day.find(params[:day_id])
    @meal = @day.meals.find(params[:id])
    @meal.destroy
    redirect_to day_path(params[:day_id])
  end

  private

    def meals_params
      params.require(:meal).permit(:name, :foods, :cal)
    end

end
