class TodosController < ApplicationController
    def index
        @todo = Todo.new
        @todos = Todo.all
    end

    def show
        @todo = Todo.find(params[:id])
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

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        @todo = Todo.find(params[:id])
        if @todo.update(todo_params)
            redirect_to '/'
        else
            reder 'new'
        end
    end

    private
    def todo_params
        params.require(:todo).permit(:task, :done, :notes)
    end
end
