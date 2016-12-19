class Format < ActiveRecord::Base
  has_many :merchandises
  has_many :albums, through: :merchandises
end
