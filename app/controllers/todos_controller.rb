class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
    if @todo.save
      flash[:notice]="New Todo created"
      redirect_to todos_path
    else
      flash[:alert] = "Not created!"
      render :new
    end
  end

  def create
    @todo = Todo.new
    if @todo.save
      return
    end
  end
end
