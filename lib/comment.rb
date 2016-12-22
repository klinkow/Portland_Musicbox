class Comment < ActiveRecord::Base
  belongs_to :albums
  validates(:text, :album_id, {:presence => true})
  validates(:text, :uniqueness => true)
end
