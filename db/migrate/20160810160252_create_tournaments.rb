class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.text :description
      t.string :game
      t.integer :team_size
      t.string :developer
      t.string :image
      t.text :rules

      t.timestamps null: false
    end
  end
end
