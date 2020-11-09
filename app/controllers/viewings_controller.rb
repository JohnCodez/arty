class ViewingsController < ApplicationController
    def index
        @viewings = Viewing.all
    end

    def show
        @viewing = Viewing.find(params[:id])
    end

    def new
        @viewing = Viewing.new
    end

    def create
        viewing = Viewing.create(viewing_params)

        redirect_to viewing
    end

    private

    def viewing_params
        params.require(:viewing).permit(:time, :day, :artowrok_id, :user_id, :comments)
    end
end
