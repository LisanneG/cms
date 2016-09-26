class LocationsController < ApplicationController
	before_action :authenticate_admin!
	def index
		@locations = Location.all
	end

	def show
		@location = Location.find(params[:id])
		@question = Question.find(params[:id])
	end

	def new
		@location = Location.new
	end

	def edit
		@location = Location.find(params[:id])
	end

	def create
		@location = Location.new(location_params)
 
		if @location.save
			redirect_to @location
		else
			render 'new'
		end
	end

	def update
		@location = Location.find(params[:id])

		if @location.update(location_params)
			redirect_to @location
		else
			render 'edit'
		end
	end

	def destroy
		@location = Location.find(params[:id])
	    @location.destroy
	 
	    redirect_to locations_path
	end

	private
		def location_params
			params.require(:location).permit(:title, :text, :x, :y, :completed , :question_id)
		end
end
