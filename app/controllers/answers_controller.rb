class AnswersController < ApplicationController
	before_action :authenticate_admin!
	def new
		@answer = Answer.new
	end

	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answers.create(answer_params)
		redirect_to question_path(@question)
	end

	def destroy
	    @question = Question.find(params[:question_id])
	    @answer = @question.answers.find(params[:id])
	    @answer.destroy

	    redirect_to question_path(@question)
	end

	private
		def answer_params
			params.require(:answer).permit(:answer, :question_id, :correct, :picture)
		end
end
