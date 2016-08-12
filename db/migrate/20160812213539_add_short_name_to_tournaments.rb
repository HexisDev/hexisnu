class AddShortNameToTournaments < ActiveRecord::Migration
  def change
  	add_column :tournaments, :short_name, :string
  	add_index :tournaments, :short_name, unique: true
  end
end
