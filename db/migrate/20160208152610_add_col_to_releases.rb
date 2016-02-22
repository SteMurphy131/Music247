class AddColToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :bio, :string
  end
end
