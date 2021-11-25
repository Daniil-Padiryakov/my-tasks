class TodoController < ApplicationController

  # POST /todos
  def create
    @todo = Todo.new(todo_params)
    if todo_params[:project_id] == nil
      @project = Project.new(project_params)
      @project.save
    else
      @todo.save
      end
  end

  # PATCH/PUT /projects/1/todo/1
  def update
    @todo = Todo.find params[:id]
    @todo.complete
    render json: @todo
  end

  private

  # Only allow a list of trusted parameters through.
  def todo_params
    params.permit(:text, :isCompleted, :project_id)
  end

  def project_params
    params.permit(:title)
  end
end
