class AddUserIdToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :user_id, :integer
  end
end
