class Author < ActiveRecord::Base
  has_many :review
  validates(:name, :presence => true)
end
