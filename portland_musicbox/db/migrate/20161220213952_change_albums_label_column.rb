class ChangeAlbumsLabelColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column(:albums, :label, :string)
    add_column(:albums, :label_id, :integer)
  end
end
