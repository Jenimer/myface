class CreateFaces < ActiveRecord::Migration[5.2]
  def change
    create_table :faces do |t|
      t.string :name
      t.text :bio
      t.text :likes
      t.text :dislikes

      t.timestamps
    end
  end
end
