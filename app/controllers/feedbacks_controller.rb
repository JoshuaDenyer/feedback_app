class FeedbacksController < ApplicationController

	def create

		@feedback = Feedback.new(feedback_params)

		respond_to do |format|
			if @feedback.save
				format.html { redirect_to :back }
				format.js {}
			else
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
