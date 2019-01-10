# Add seed data here. Seed your database with `rake db:seed`
Artist.destroy_all
Song.destroy_all
Genre.destroy_all
SongGenre.destroy_all

LibraryParser.parse
# hov = Artist.create(name: "Jay-z")
# keys = Artist.create(name: "Alicia Keys")
#
# song_1 = {artist_id: hov, name: "Brooklyn"}
# song_2 = {artist_id: keys, name: "Dont Know"}
#
# song1 = Song.create(song_1)
# song2 = Song.create(song_2)
#
#
# genre_1 = {name: "Pop"}
# genre_2 = {name: "Rap"}
#
# genre1 = Genre.create(genre_1)
# genre2 = Genre.create(genre_2)
#
# songgenre_1 = {song_id: song1, genre_id: genre1}
# songgenre_2 = {song_id: song2, genre_id: genre2}
#
#
# songgenre1 = Song_Genre.create(songgenre_1)
# songgenre2 = Song_Genre.create(songgenre_2)
