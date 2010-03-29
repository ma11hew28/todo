class TodosController < ApplicationController
  # GET /todos
  def index
    @todos = current_user.todos
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  def create
    @todo = current_user.todos.build(params[:todo])

    if @todo.save
      flash[:notice] = 'Todo was successfully created.'
      redirect_to(todos_url)
    else
      render :action => "new"
    end
  end

  # PUT /todos/1
  def update
    @todo = Todo.find(params[:id])

    if @todo.update_attributes(params[:todo])
      flash[:notice] = 'Todo was successfully updated.'
      redirect_to :home
    else
      render :action => "edit"
    end
  end

  # DELETE /todos/1
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to(todos_url)
  end
end
