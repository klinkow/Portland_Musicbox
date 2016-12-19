class Comment < ActiveRecord::Base
  belongs_to :albums
  validates(:text, :user_id, :album_id, {:presence => true})
end
