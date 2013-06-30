class QuestionsController < ApplicationController
	before_filter :authenticate_user!, only: :new

	def new
		@question = Question.new
	end

	def create
		@question = current_user.questions.build(params[:question])
		if @question.save
			flash[:success] = "You have asked the question"
			redirect_to @question
		else
			flash[:error] = "There was a problem"
			render 'new'
		end
	end

	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
	end
end
