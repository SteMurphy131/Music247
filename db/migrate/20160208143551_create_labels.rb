class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :name
      t.string :location
      t.string :image
      t.string :owner

      t.timestamps null: false
    end
  end
end
