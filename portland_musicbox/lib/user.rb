class User < ActiveRecord::Base
  has_and_belongs_to_many :purchases
  has_one :artist
  scope(:current_user, -> do
    where({:current => true})
  end)
end
