class Question < ActiveRecord::Base
  attr_accessible :question, :user_id, :description, :tag_list
  acts_as_taggable

  belongs_to :user
  has_many :answers

  def self.latest_top_questions
    order("qscore DESC").limit(10)
  end

  def self.automated?
    if self.artist || self.song || self.similar || self.learn
      return true
    end
  end
end
