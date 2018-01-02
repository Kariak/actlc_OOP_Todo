require_relative "list"
require_relative "song"

fun_song = Song.new("Fun song", "Robert", 150, "This song is for fun, Yay!\ This is a new line to see if it works")
robert_song = Song.new("Robert's Song", "Rob", 220, "This song is for Robert, Yay!")
last_song = Song.new("Last Song", "Me", 330, "This is the last song, so I better make it good!")
list = List.new

list.add_song(fun_song)
list.add_song(robert_song)
list.add_song(last_song)

puts last_song.friendly_duration

puts list.shuffle
puts list.duration