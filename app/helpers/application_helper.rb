require 'json'
require 'open-uri'
module ApplicationHelper
  def find_similar_artists(artist)
    api = '0CBLHAD8QZOXPVIDI'
    result = JSON.parse(open('http://developer.echonest.com/api/v4/artist/similar?api_key=0CBLHAD8QZOXPVIDI&name=' + artist).read)['response']['artists']
    artists = Array.new
    result.each do |a|
      artists.push(a)
    end
    return artists
  end
  
end
