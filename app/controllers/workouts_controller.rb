class WorkoutsController < ApplicationController
  def show
    @workout = get_workout(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workouts_params)
    if @workout.save
      redirect_to day_path(params[:day_id])
    else
      render 'new'
    end
  end

  def edit
    @workout = get_workout(params[:id])
  end

  def update
    @workout = get_workout(params[:id])
    if @workout.update(workouts_params)
      redirect_to day_path(params[:day_id])
    else
      render 'edit'
    end
  end

  def destroy
    @workout = get_workout(params[:id])
    @workout.destroy
    redirect_to day_path(params[:day_id])
  end

  private

    def workouts_params
      params.require(:workout).permit(:name, :exercises, :cal)
    end

    def get_workout(id)
      Workout.find(id)
    end

end
