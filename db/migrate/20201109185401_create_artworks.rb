class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :size
      t.string :medium
      t.integer :gallerylocation_id
      t.integer :specialist_id

      t.timestamps
    end
  end
end
