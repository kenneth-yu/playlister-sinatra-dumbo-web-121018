class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.integer :songgenre_id
      t.string :name
    end
  end
end
