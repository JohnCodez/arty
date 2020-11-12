class AddImagePathToSpecialists < ActiveRecord::Migration[6.0]
  def change
    add_column :specialists, :image_path, :string
  end
end
