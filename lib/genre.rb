class Genre
    @@all = []
    attr_accessor :name

    def initialize(name)
        self.name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.collect do |my_songs|
            my_songs.artist
        end
    end

end