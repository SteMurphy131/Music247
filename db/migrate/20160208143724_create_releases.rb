class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.integer :noTracks
      t.string :artist_name
      t.integer :artist_id
      t.string :label_name
      t.integer :label_id

      t.timestamps null: false
    end
  end
end
