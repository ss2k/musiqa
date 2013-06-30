#require 'net/http'
require 'json'
module QuestionsHelper
  def automated?(question)
    if question.similar
      return true
    elsif question.learn
      return true
    elsif !question.artist.nil?
      return true
    elsif !question.song.nil?
      return true
    else
      return false
    end
  end

  def find_similar_artists(artist)
    api = ENV['en_api_key']
    url = URI.parse('http://developer.echonest.com/api/v4/artist/similar?api_key=#{api}&name=#{artist}')
    req = Net::HTTP::Get.new(url.to_s)
    res = 
  end
end
