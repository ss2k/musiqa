class Answer < ActiveRecord::Base
  attr_accessible :answer, :question_id, :score, :user_id
end
