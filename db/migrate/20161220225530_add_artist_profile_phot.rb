class AddArtistProfilePhot < ActiveRecord::Migration[5.0]
  def change
    add_column(:artists, :profile_photo, :string)
  end
end
