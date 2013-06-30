class AnswersController < ApplicationController
  
  before_filter :authenticate_user!, only: :create

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(params[:answer])
    @answer.user = current_user
    if @answer.save
      flash[:success] = "You have successfully submitted the answer"
      redirect_to @question
    else
      flash[:error] = "There was a problem"
      redirect_to @question
    end
  end
end
