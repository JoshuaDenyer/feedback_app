class FeedbacksController < ApplicationController

	def create

		@feedback = Feedback.new(feedback_params)
		@feedback.devices = 3
		@feedback.orgId = 5
		@feedback.url = "/"

			
		

		respond_to do |format|
			if @feedback.save
				@error = false
				format.html { redirect_to :back }
				format.js {}
			else
				@error = true
				format.html { redirect_to :back }
				format.js {}
			end
		end

		# $("<p></p>", { text: @feedback.errors.full_messages }).insertBefore($("#formID"))'}
		# :js=>' render '

		

	end

	private

		def feedback_params 
			params.require(:feedback).permit(:name, :email, :feedback, :devices, :orgId, :url);
		end

end
