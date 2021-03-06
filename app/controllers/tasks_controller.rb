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
    @task = Task.new(task_params) # i don't understand strong params yet
    @task.save
    redirect_to tasks_path(@task) # not sure why this is to tasks path, maybe because when you submit the post request you want it to redirect to your tasks page so that's why?
  end

  def edit
    @task = Task.find(params[:id]) # no idea what this does, except maybe it finds the id# of my task?
  end

  def update

  end

  private

  def task_params
    params.require(:task).permit(:title, :details) # don't understand this but know that it works
  end
end

# might need a re direct to for a certain action
