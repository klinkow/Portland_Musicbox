class Review < ActiveRecord::Base
  belongs_to :albums
  validates(:text, :author, :album_id, {:presence => true})
end
