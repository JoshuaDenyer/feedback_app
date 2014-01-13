class FeedbacksController < ApplicationController

	def create
		@feedback = Feedback.new(feedback_params, devices: 3, orgId: 5, url: "/")
		@feedback.devices = 3
		@feedback.orgId = 5
		@feedback.url = "/"

		if @feedback.save
			#render text: params.inspect
			flash[:success] = "Feedback was sent!"
			redirect_to :back
		else
			flash[:error] = "Feedback failed"
			redirect_to :back
		end
	end

	private

		def feedback_params 
			params.require(:feedback).permit(:name, :email, :feedback, :devices, :orgId, :url);
		end

end
