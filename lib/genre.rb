class Genre
    attr_reader :name
    @@all = []
    
    def initialize name
        @name = name

        @@all << self
    end

    def songs
        Song.all.filter{|song| song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map(&:artist).uniq
    end
end