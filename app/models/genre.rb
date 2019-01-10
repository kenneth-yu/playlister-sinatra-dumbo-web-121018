class Genre < ActiveRecord::Base
  belongs_to :songgenre
  has_many :songs, through: :songgenre
end
