#require 'net/http'

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
end
