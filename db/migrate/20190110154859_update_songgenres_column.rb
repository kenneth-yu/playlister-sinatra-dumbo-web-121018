class UpdateSonggenresColumn < ActiveRecord::Migration
  def change
    rename_column :songgenres, :artistid, :song_id
    add_column :songgenres, :genre_id, :integer
  end
end
