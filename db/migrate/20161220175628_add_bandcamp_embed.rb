class AddBandcampEmbed < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :music_embed, :string
  end
end
