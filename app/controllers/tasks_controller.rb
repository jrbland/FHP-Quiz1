class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
    @tasks = Task.new
  end
  
  def create
    Task.create(place_params)
    redirect_to root_path
  end
  
private

  def place_params
    params.require(:task).permit(:item, :user)
  end
  
end
