class Album < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :tracks
<<<<<<< HEAD
  has_many :merchandises
  has_many :formats, through: :merchandises
=======
  has_many :reviews
>>>>>>> 2990dc9ca31127ed889e09135185e7409bea8cdd
end
