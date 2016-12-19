class AddMerchandiseTable < ActiveRecord::Migration[5.0]
  def change
    create_table :merchandises do |m|
      m.integer :album_id
      m.integer :format_id
      m.integer :quantity
      m.decimal :price
    end

    create_table :formats do |t|
      t.string :type
    end
  end
end
