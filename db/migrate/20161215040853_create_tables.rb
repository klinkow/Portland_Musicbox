class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table(:artists) do |t|
      t.string :name
    end
    create_table(:albums) do |t|
      t.string :name
      t.string :credits
      t.integer :artist_id
      t.string :label
      t.string :format
    end
    create_table :labels do |t|
      t.string :name
      t.date :est_date
    end
    create_table :tracks do |t|
      t.string :name
      t.integer :track_number
      t.integer :album_id
      t.integer :artist_id
      t.string :track_length
    end
  end
end
