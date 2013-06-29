class Answer < ActiveRecord::Base
  attr_accessible :answer, :question_id, :score, :user_id

  belongs_to :question
  belongs_to :user
end
