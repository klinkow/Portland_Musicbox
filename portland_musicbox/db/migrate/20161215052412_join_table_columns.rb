class JoinTableColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :artists_labels, :artist_id, :int
    add_column :artists_labels, :label_id, :int
    add_column :albums_tracks, :album_id, :int
    add_column :albums_tracks, :track_id, :int
  end


end
