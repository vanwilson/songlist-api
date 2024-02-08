class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :stanza
      t.string :chorus
      t.string :key

      t.timestamps
    end
  end
end
