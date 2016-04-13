class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :book_id
      t.datetime :checkout_date
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end
