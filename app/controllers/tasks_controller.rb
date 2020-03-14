class TasksController < ApplicationController
  def index
    @tasks = Task.all # .all is from active records and it will allow me to list out all tasks
  end

  def show
  end
end
