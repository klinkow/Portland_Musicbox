class AddPurchaseTables < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.date :date
      t.integer :total
    end

    create_table :purchases_users do |t|
      t.integer :purchase_id
      t.integer :user_id
    end
  end
end
