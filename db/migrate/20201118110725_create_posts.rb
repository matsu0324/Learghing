class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :sentence, :null => false
      t.string :image_id, :null => false
      t.text :meaning, :null => false
      t.text :explanation, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
