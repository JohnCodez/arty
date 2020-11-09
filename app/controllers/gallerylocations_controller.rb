class GallerylocationsController < ApplicationController
    def index
        @gallerylocations = Gallerylocation.all
    end

    def show
        @gallerylocation = Gallerylocation.find(params[:id])
    end

    def new
        @gallerylocation = Artwork.new
    end

    def create
        gallerylocation = Gallerylocation.create(gallerylocation_params)

        redirect_to gallerylocation_path
    end

    private

    def gallerylocation_params
        params.require(:gallerylocation).permit(:name, :location)
    end
end
