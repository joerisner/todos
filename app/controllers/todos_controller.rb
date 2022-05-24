class TodosController < ApplicationController
  before_action :set_todo, only: %i[ edit update destroy ]

  def index
    @todos = Todo.all
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.turbo_stream
      else
        format.turbo_stream { render turbo_stream: error_state_turbo_stream }
      end
    end
  end

  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.turbo_stream
      else
        format.turbo_stream { render turbo_stream: error_state_turbo_stream }
      end
    end
  end

  def destroy
    @todo.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove("#{helpers.dom_id(@todo)}") }
    end
  end

  private
    
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:title, :status)
    end

    def error_state_turbo_stream
      turbo_stream.replace("#{helpers.dom_id(@todo)}_form", partial: 'form', locals: { todo: @todo })
    end
end
