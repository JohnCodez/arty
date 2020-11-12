class AddArtistNameToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :artist_name, :string
  end
end
