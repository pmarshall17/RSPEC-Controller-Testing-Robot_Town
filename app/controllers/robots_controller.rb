class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new
  end

  def edit
    @robot = Robot.find(params[:id])
  end

  def create
    if @robot = Robot.create(robot_params)
      redirect_to robot_path(@robot)
    else
      render :new
    end
  end

  def update
    @robot = Robot.find(params[:id])
    if @robot.update(robot_params)
      redirect_to robot_path(@robot)
    else
      render :edit
    end
  end

  def destroy
    Robot.find(params[:id]).destroy
    redirect_to robots_path
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :friendly)
  end





end
