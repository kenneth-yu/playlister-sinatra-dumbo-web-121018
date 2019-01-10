class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :songgenre_id
      t.string :name
    end
  end
end
