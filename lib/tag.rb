class Tag < ActiveRecord::Base
  belongs_to :albums
  validates(:text, :album_id, {:presence => true})
end
