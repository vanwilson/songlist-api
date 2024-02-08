class RemoveUpdatedAtFromSongs < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :updated_at, :datetime
  end
end
