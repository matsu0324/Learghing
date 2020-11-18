class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :sentence
      t.string :image_id
      t.text :meaning
      t.text :explanation
      t.integer :user_id

      t.timestamps
    end
  end
end
