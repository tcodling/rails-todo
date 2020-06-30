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
            redirect_to @todo
        else
            render 'edit'
        end
    end

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to '/'
    end

    def toggle
        @todo = Todo.find(params[:id])
        @todo.done = !@todo.done
        @todo.save
        redirect_to @todo
    end

    private
    def todo_params
        params.require(:todo).permit(:task, :notes)
    end
end
