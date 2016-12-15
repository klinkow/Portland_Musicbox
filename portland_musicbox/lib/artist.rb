class Artist < ActiveRecord::Base
  has_many :albums
  has_many :tracks
  has_and_belongs_to_many :labels
end
