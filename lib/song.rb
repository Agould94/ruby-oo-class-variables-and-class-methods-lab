require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        count_hash = {}
        @@genres.each do |genre|
            if count_hash.keys.include?(genre)
                count_hash[genre] += 1
            else
                count_hash[genre] = 1
            end
            #binding.pry
        end
        count_hash
    end

    def self.artist_count
        artists_hash = {}
        @@artists.each do |artist|
            if artists_hash.keys.include?(artist)
                artists_hash[artist] += 1
            else
                artists_hash[artist] = 1
            end
        end
        artists_hash
    end
end