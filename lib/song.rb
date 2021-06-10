class Song
    attr_reader :name, :artist, :genre
    @@all = []

    def initialize name, artist, genre = "Pop"
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
    end

    def self.all
        @@all
    end
    
end