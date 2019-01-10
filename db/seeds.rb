# Add seed data here. Seed your database with `rake db:seed`

artist1 = {name: "Jay-z"}
artist2 = {name: "Alicia Keys"}

hov = Artist.create(artist1)
keys = Artist.create(artist2)

song_1 = {artist_id: hov, :name "Brooklyn"}
song_2 = {artist_id: keys, :name "Dont Know"}

song1 = Song.create(song_1)
song2 = Song.create(song_2)


genre_1 = {name: "Pop"}
genre_2 = {name: "Rap"}

genre1 = Genre.create(genre_1)
genre2 = Genre.create(genre_2)

songgenre1 = SongGenre.create(song1, genre1)
songgenre2 = SongGenre.create(song2, genre2)
