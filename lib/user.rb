class User < ActiveRecord::Base
  has_many :purchases
  has_one :artist
  scope(:current_user, -> do
    where({:current => true})
  end)
  validates(:username, :uniqueness => true)
end
