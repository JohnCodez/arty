class CreateSpecialists < ActiveRecord::Migration[6.0]
  def change
    create_table :specialists do |t|
      t.string :name
      t.string :bio
      t.string :speciality

      t.timestamps
    end
  end
end
