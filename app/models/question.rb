class Question < ActiveRecord::Base
  attr_accessible :question, :user_id, :title

  belongs_to :user
end
