class TodoController < ApplicationController
  # POST /todos
  def create
    if todo_params[:project_id] == nil
      @project = Project.new(project_params)
      @project.save

      @todo = Todo.new(todo_params)
      @project_last = Project.last
      @todo[:project_id] = @project_last.id
      @todo.save
      render json: @project
    else
      @todo = Todo.new(todo_params)
      @todo.save
      end
  end

  # PATCH/PUT /projects/1/todo/1
  def update
    @todo = Todo.find params[:id]
    @todo.complete
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
