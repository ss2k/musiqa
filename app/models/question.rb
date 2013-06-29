class Question < ActiveRecord::Base
  attr_accessible :question, :user_id, :description

  belongs_to :user
  has_many :answers
end
