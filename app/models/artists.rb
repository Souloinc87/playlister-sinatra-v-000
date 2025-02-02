class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.split(" ").join("-").downcase
  end
end
