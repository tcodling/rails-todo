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
        # @list = List.find(params[:listId])
    end

    def create
        @todo = Todo.new(todo_params)
        logger.debug
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
            redirect_to @todo
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
        redirect_to @todo
    end

    private
    def todo_params
        params.permit(:task, :notes, :list_id)
    end
end
