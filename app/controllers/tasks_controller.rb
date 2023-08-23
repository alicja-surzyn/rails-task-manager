class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task
    # @task = Task.find(params[:id]) set_task - refactor
  end

  def new
    #create an empty instance to be used on the form
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # no need for a view
    redirect_to tasks_path
  end

  def edit
    # found in: before_action :set_task, only: [:show, :edit]
    # @task = Task.find(params[:id])
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
