class ChangeTagAlbumRelationship < ActiveRecord::Migration[5.0]
  def change
    remove_column(:tags, :album_id, :integer)
    create_table(:albums_tags) do |t|
      t.integer :album_id
      t.integer :tag_id
    end
  end
end
