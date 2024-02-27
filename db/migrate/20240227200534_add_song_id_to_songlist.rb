class AddSongIdToSonglist < ActiveRecord::Migration[7.0]
  def change
    add_column :songlists, :song_id, :integer
  end
end
