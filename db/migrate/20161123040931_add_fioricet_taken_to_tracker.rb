class AddFioricetTakenToTracker < ActiveRecord::Migration
  def change
    add_column :trackers, :fioricet_taken, :string
  end
end
