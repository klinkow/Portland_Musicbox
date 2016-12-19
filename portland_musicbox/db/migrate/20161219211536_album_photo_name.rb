class AlbumPhotoName < ActiveRecord::Migration[5.0]
  def change
    add_column(:albums, :album_photo_name, :string)


    add_column(:artists, :artist_photo_name, :string)
  end
end
