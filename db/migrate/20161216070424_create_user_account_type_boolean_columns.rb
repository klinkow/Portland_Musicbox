class CreateUserAccountTypeBooleanColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :artist, :boolean
    add_column :users, :editor, :boolean
  end
end
