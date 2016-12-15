class JoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :albums_tracks
    create_table :artists_labels
  end
end
