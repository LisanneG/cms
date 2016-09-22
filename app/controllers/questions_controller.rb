class QuestionsController < ApplicationController
	def create
		@location = Location.find(params[:location_id])
		@question = @location.questions.create(question_params)
		redirect_to location_path(@location)
	end

	private
    def question_params
      params.require(:question).permit(:question, :right_answer_id, :location_id)
    end
end
