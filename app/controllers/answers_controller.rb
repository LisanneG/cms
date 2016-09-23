class AnswersController < ApplicationController
	def new
		@answer = Answer.new
	end

	def create
		render plain: params[:answer].inspect
	end
end
