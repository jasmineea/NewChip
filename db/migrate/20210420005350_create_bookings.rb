class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :room_id
      t.string :name
      t.string :description
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
