class CreateUserLabels < ActiveRecord::Migration
  def change
    create_table :user_labels do |t|
      t.integer :user_id
      t.integer :label_id

      t.timestamps null: false
    end
  end
end
