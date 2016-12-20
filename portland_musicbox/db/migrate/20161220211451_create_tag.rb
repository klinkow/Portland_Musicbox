class CreateTag < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.integer :album_id
      t.string :text
    end
  end
end
