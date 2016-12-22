class AddAuthorIdToReview < ActiveRecord::Migration[5.0]
  def change
    add_column(:reviews, :author_id, :integer)
  end
end
