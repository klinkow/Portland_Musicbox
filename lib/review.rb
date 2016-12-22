class Review < ActiveRecord::Base
  belongs_to :album
  belongs_to :author
  validates(:text, :author_id, :album_id, {:presence => true})
end
