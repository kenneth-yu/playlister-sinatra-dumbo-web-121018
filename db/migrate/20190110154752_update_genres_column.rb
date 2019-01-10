class UpdateGenresColumn < ActiveRecord::Migration
  def change
    remove_column :genres, :songgenre_id
  end
end
