class List
	def initialize
		@playlist = []
	end

	def playlist
		return @playlist
	end

	def add_song(song)
		@playlist << song
	end

	def play
		@playlist.each do |song|
			puts `say #{song.get_lyrics}`
		end
		return
	end
	def shuffle
		@playlist.shuffle!
		play
	end
	def duration
		sum_duration = 0
		@playlist.each do |song|
			sum_duration += song.get_duration
		end
		return puts "Your playlist is #{sum_duration} seconds long!" 
	end
end