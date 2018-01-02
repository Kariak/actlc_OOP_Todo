class Song
	def initialize(title,artist,duration,lyrics)
		@title = title
		@artist = artist
		@duration = duration
		@lyrics = lyrics
	end

	def get_title
		@title
	end

	def get_artist
		@artist
	end

	def get_duration
		@duration
	end

	def get_lyrics
		@lyrics
	end

	def play
		puts `say #{get_lyrics}`
	end

	def friendly_duration
		return puts "#{(get_duration / 60) % 60} minutes, #{get_duration % 60} seconds."
	end
end