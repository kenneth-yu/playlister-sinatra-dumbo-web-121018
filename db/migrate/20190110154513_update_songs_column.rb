class UpdateSongsColumn < ActiveRecord::Migration
  def change
    rename_column :songs, :songgenre_id, :artist_id
  end
end
