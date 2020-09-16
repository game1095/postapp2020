class FeedbacksController < ApplicationController
	def index
		@feedbacks = Feedback.all
	end

	def new
		@feedback = Feedback.new
	end

	def create
		@feedback = Feedback.create(feedback_params)
		if @feedback.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@feedback = Feedback.find(params[:id])
	end

	private
		def feedback_params
	  		params.require(:feedback).permit(:topic , :comment , :name)
		end
end
