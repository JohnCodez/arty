class SpecialistsController < ApplicationController
    def index
        @specialists = Specialist.all
    end

    def show
        @specialist = Specialist.find(params[:id])
    end

    def new
        @specialist = Specialist.new
    end

    def create
        @specialist = Specialist.create(specialist_params)

        if @specialist.valid?
            redirect_to specialist_path(@specialist)
        else
            flash[:specialist_errors] = @specialist.errors.full_messages
            redirect_to new_specialist_path
        end
    end

    def destroy
        @specialist = Specialist.find(params[:id])
        @specialist.destroy

        redirect_to specialists_path
    end

    private

    def specialist_params
        params.require(:specialist).permit(:name, :bio, :speciality)
    end
end
