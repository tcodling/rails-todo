class TodosController < ApplicationController
    before_action :get_todo

    def show
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
    end

    def update
        if @todo.update(todo_params)
            redirect_to "/lists/#{@todo.list_id}/todos/#{@todo.id}"
        else
            render 'edit'
        end
    end

    def destroy
        @todo.destroy
        redirect_to '/'
    end

    def toggle
        @todo.done = !@todo.done
        @todo.save
        redirect_to "/lists/#{@todo.list_id}/todos/#{@todo.id}"
    end

    def toggleIndex
        @todo.done = !@todo.done
        @todo.save
        redirect_to "/"
    end

    private
    def todo_params
        params.permit(:task, :notes, :list_id)
    end

    def get_todo
        if params[:todo_id]
            @todo = Todo.find(params[:todo_id])
        end
        if params[:list_id]
            @list = List.find(params[:list_id])
        end
    end
end
