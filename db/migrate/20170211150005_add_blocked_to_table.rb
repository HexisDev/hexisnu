class AddBlockedToTable < ActiveRecord::Migration
  def change
    add_column :tables, :blocked, :bool
  	add_index :tables, :blocked
  end
end
