class MovementsController < ApplicationController
  def index
    @movements = Movement.all
  end

  def new
    @movement = Movement.new
  end

  def create
    @movement = Movement.new(movement_params)
    @movement.save!
    redirect_to movement_path(@movement)
  end

  def edit
    @movement = movement
  end

  def update
    movement.update(movement_params)
    redirect_to movement_path(@movement)
  end

  def destroy
    movement.destroy
    redirect_to movements_path
  end

  def show
    movement
  end

  private
  def movement_params
    params.require(:movement).permit(:category_id, :value, :description)
  end

  def movement
    @movement ||= Movement.find(params[:id])
  end
end
