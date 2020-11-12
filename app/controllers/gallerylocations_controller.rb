class GallerylocationsController < ApplicationController
    def index
        @gallerylocations = Gallerylocation.all
    end

    def show
        @gallerylocation = Gallerylocation.find(params[:id])
    end

    def new
        @gallerylocation = Gallerylocation.new
    end

    def create
        @gallerylocation = Gallerylocation.create(gallerylocation_params)

        if @gallerylocation.valid?
            redirect_to gallerylocation_path(@gallerylocation)
        else
            flash[:gallerylocation_errors] = @gallerylocation.errors.full_messages
            redirect_to new_gallerylocation_path
        end
    end

    def destroy
        @gallerylocation = Gallerylocation.find(params[:id])
        @gallerylocation.destroy

        redirect_to gallerylocations_path
    end


    private

    def gallerylocation_params
        params.require(:gallerylocation).permit(:name, :location)
    end
end 
