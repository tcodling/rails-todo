class TodosController < ApplicationController
    def index
        @todo = Todo.new
        @todos = Todo.all
    end

    def show
        @todo = Todo.find(params[:todo_id])
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
        @todo = Todo.find(params[:todo_id])
    end

    def update
        @todo = Todo.find(params[:todo_id])
        if @todo.update(todo_params)
            redirect_to "/lists/#{@todo.list_id}/#{@todo.id}"
        else
            render 'edit'
        end
    end

    def destroy
        @todo = Todo.find(params[:todo_id])
        @todo.destroy
        redirect_to '/'
    end

    def toggle
        @todo = Todo.find(params[:todo_id])
        @todo.done = !@todo.done
        @todo.save
        redirect_to "/lists/#{@todo.list_id}/#{@todo.id}"
    end

    private
    def todo_params
        params.permit(:task, :notes, :list_id)
    end
end
