class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(song_name, genre)
        new_song = Song.new(song_name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        self.songs.collect do |my_song|
            my_song.genre
        end
    end
end