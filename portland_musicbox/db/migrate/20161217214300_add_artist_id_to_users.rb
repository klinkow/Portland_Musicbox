class AddArtistIdToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :artist, :boolean
    add_column :users, :artist_id, :integer
  end
end
