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
        @viewing = Viewing.create(viewing_params)

        if @viewing.valid?
            redirect_to viewing_path(@viewing)
        else
            flash[:viewing_errors] = @viewing.errors.full_messages
            redirect_to new_viewing_path
        end
    end

    def edit
        @viewing = Viewing.find(params[:id])
    end

    def update 
        @viewing = Viewing.find(params[:id])

        if @viewing.update(viewing_params)
            redirect_to viewing_path(@viewing)
        else
            flash[:viewing_errors]
        end
    end

    def destroy
        @viewing = Viewing.find(params[:id])
        @viewing.destroy

        redirect_to viewings_path
    end

    private

    def viewing_params
        params.require(:viewing).permit(:time, :day, :artwork_id, :user_id, :comments)
    end
end
