class Genre < ActiveRecord::Base
  has_many :songs 
  # add associations
  def genre_id=(id)
    id.each do |i|
      genre = Genre.find(i)
      self.genres << genre
    end
  end
end
