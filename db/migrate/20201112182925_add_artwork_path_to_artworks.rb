class AddArtworkPathToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :artwork_path, :string
  end
end
