class CreateReview < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :album_id
      t.string :author
      t.string :text
    end
  end
end
