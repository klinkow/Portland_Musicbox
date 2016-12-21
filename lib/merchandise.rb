class Merchandise < ActiveRecord::Base
  belongs_to :format
  belongs_to :album

end
