class CreateGallerylocations < ActiveRecord::Migration[6.0]
  def change
    create_table :gallerylocations do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
