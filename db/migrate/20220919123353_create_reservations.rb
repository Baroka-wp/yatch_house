class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :status

      t.timestamps
    end
  end
end
