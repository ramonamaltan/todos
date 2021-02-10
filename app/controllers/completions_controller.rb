class CompletionsController < ApplicationController
  def create
    todo.complete!
    redirect_to root_path
  end

  def destroy
    todo.update_column :completed_at, nil
    redirect_to root_path
  end

  private

  def todo
    current_user.todos.find(params[:todo_id])
  end
end
