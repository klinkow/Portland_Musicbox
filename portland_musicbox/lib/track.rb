class Track < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :albums
  validates(:name, :presence => true)

end
