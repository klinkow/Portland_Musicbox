class Album < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :tracks
  has_many :reviews
end
