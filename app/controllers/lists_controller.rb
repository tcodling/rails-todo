class ListsController < ApplicationController
    before_action :require_user, only: [:index, :show]

    def index
        @lists = List.where(user_id: current_user.id)
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.user_id = current_user.id
        if @list.save
            redirect_to '/'
        else
            render 'new'
        end
    end

    def destroy
        @list = List.find(params[:list_id])
        @list.destroy
        redirect_to "/"
    end

    private
    def list_params
        params.permit(:name)
    end
end
