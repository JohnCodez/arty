class CreateViewings < ActiveRecord::Migration[6.0]
  def change
    create_table :viewings do |t|
      t.string :time
      t.string :day
      t.integer :artwork_id
      t.integer :user_id
      t.string :comments

      t.timestamps
    end
  end
end
