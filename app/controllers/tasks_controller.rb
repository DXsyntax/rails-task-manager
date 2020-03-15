class TasksController < ApplicationController
  def index
    @tasks = Task.all # .all is from active records and it will allow me to list out all tasks
  end

  def show
    @task = Task.find(params[:id]) # so this params comes from rails and im extracting its id i got from the console
  end

  def new
    @task = Task.new # this @task is linking to my 'new view file'
  end

  def create
    @task = Task.new(params[:task])
  #   # @task.save
  end
end

# might need a re direct to for a certain action
