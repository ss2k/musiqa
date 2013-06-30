class QuestionsController < ApplicationController
	before_filter :authenticate_user!, only: :new

	def new
		@question = Question.new
	end

	def create
		@question = current_user.questions.build(params[:question])
		if !(@question.question.downcase.scan(/\w+/) & ["play", "like", "similar"]).empty?
			flash[:alert] = @question.question
			check_type @question.question
		end
		if @question.save
			flash[:success] = "You have asked the question"
			redirect_to @question
		else
			flash[:error] = "There was a problem"
			render 'new'
		end
	end

	def index
		@questions = Question.latest_top_questions
	end

	def show
		@question = Question.find(params[:id])
		@answer = Answer.new
		@answers = @question.answers.order("score DESC")
		@qscore = @question.qscore
	end

	def qscore
		@question = Question.find(params[:id])
		@qscore = @question.qscore
		@question.increment!(:qscore)
		respond_to do |format|
			format.js
		end
	end

	private
	def check_type(title)
		if title.include?("similar")
			@question.artist = title.split("to").last.strip.gsub("?", "")
			@question.similar = true
		end
	end
end
