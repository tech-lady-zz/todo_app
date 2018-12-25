class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice]="New Todo created"
      redirect_to root_path and return
    else
      flash[:alert] = "Not created!"
      render :new
    end
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
  end

  def destroy
    @todo = Todo.delete(params[:id])
    redirect_to root_path and return
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :content)
  end
end
