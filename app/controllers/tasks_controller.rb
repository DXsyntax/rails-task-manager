class TasksController < ApplicationController
  def index
    @tasks = Task.all # .all is from active records and it will allow me to list out all tasks
  end

  def show
    @task = Task.find(params[:id]) # so this params comes from rails and im extracting its id i got from the console
  end

  def new
  end
end
