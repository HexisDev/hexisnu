class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :seats
      t.integer :booked

      t.timestamps null: false
    end
  end
end
