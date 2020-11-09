class ArtworksController < ApplicationController

    def index
        @artworks = Artwork.all
    end

    def show
        @artwork = Artwork.find(params[:id])
    end

    def new
        @artwork = Artwork.new
    end

    def create
        artwork = Artwork.create(artwork_params)

        redirect_to artwork_path(artwork)
    end

    private

    def artwork_params
        params.require(:artwork).permit(:name, :size, :medium, :gallerylocation_id, :specialist_id)
    end
end
