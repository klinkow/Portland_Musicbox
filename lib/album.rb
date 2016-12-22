class Album < ActiveRecord::Base
  belongs_to :label
  belongs_to :artist
  has_and_belongs_to_many :tracks
  has_many :merchandises
  has_many :formats, through: :merchandises
  has_many :reviews
  has_many :comments
  has_and_belongs_to_many :tags
  belongs_to :label
  validates(:name, :presence => true)
  validates(:name, :uniqueness => true)
end
