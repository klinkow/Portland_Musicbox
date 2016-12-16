class User < ActiveRecord::Base
  has_and_belongs_to_many :purchases
  scope(:current_user, -> do
    where({:current => true})
  end)
end
