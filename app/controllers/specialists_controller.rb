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
        specialist = Specialist.create(specialist_params)

        redirect_to specialist
    end

    private

    def specialist_params
        params.require(:specialist).permit(:name, :bio, :specialty)
    end
end
