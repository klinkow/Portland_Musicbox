class ChangeLabelEstDateToInteger < ActiveRecord::Migration[5.0]
  def change
    remove_column(:labels, :est_date, :date)
    add_column(:labels, :est_date, :integer)
  end
end
