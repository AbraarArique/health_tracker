class MealsController < ApplicationController
  def show
    @meal = get_meal(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meals_params)
    if @meal.save
      redirect_to day_path(params[:day_id])
    else
      render 'new'
    end
  end

  def edit
    @meal = get_meal(params[:id])
  end

  def update
    @meal = get_meal(params[:id])
    if @meal.update(meals_params)
      redirect_to day_path(params[:day_id])
    else
      render 'edit'
    end
  end

  def destroy
    @meal = get_meal(params[:id])
    @meal.destroy
    redirect_to day_path(params[:day_id])
  end

  private

    def meals_params
      params.require(:meal).permit(:name, :foods, :cal)
    end

    def get_meal(id)
      Meal.find(id)
    end

end
