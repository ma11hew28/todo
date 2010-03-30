class TodosController < ApplicationController
  # GET /todos
  def index
    @todos = current_user.todos
  end

  def sort
    params[:todos].each_with_index do |id, index|
      Todo.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end

  # GET /todos/1
  def show
    @todo = Todo.find(params[:id])
  end

  # GET /todos/new
  def new
    @todo = Todo.new(:due => 3.days.from_now)
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
      redirect_to home_url
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
