class TodosController < ApplicationController
    def index
        @todo = Todo.new
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save 
            redirect_to '/' 
        else 
            render 'new' 
        end 
    end

    private
    def todo_params
        params.require(:todo).permit(:task, :done)
    end
end
