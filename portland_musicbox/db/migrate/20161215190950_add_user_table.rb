class AddUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :username
      t.string :password
    end
  end
end
