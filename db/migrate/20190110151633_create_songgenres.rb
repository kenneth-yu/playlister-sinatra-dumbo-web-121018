class CreateSonggenres < ActiveRecord::Migration
def change
  create_table :songgenres do |t|
      t.integer :artistid
    end
end
end
