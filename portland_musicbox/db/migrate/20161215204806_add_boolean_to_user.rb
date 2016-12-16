class AddBooleanToUser < ActiveRecord::Migration[5.0]
  def change
    add_column(:users, :current, :boolean)
  end
end
