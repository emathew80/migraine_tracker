class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|

      t.string :pain_level
      t.text :description
      t.integer :migraine_id
      t.timestamps
    end
  end
end
