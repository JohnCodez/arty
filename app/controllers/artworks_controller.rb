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
        @artwork = Artwork.create(artwork_params)

        if @artwork.valid?
            redirect_to artwork_path(@artwork)
        else
            flash[:artwork_errors] = @artwork.errors.full_messages
            redirect_to new_artwork_path
        end
    end

    private

    def artwork_params
        params.require(:artwork).permit(:name, :artist_name, :size, :medium, :gallerylocation_id, :artwork_path, :specialist_id)
    end
end
