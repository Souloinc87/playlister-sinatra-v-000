class Genre < ActiveRecord::Base

   has_many :songs, through: :song_genres
   has_many :song_genres
   has_many :artists, through: :songs

   def slug
      self.name.split(" ").join("-").downcase
   end
end
