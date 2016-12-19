class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :album_id
      t.integer :user_id
      t.string :text
    end
  end
end
