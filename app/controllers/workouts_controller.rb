class WorkoutsController < ApplicationController
  def create
    @day = Day.find(params[:day_id])
    @workout = @day.workouts.build(workouts_params)
    if @workout.save
      redirect_to day_path(params[:day_id])
    else
      render 'error'
    end
  end

  def edit
    @day = Day.find(params[:day_id])
    @workout = @day.workouts.find(params[:id])
  end

  def update
    @day = Day.find(params[:day_id])
    @workout = @day.workouts.find(params[:id])
    if @workout.update(workouts_params)
      redirect_to day_path(params[:day_id])
    else
      render 'error'
    end
  end

  def destroy
    @day = Day.find(params[:day_id])
    @workout = @day.workouts.find(params[:id])
    @workout.destroy
    redirect_to day_path(params[:day_id])
  end

  private

    def workouts_params
      params.require(:workout).permit(:name, :exercises, :cal)
    end

end
