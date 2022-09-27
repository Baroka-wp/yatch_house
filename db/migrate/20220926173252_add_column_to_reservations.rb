class AddColumnToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :total, :integer, default: 0
  end
end
