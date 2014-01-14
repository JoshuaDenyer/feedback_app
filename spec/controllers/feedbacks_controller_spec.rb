require 'spec_helper'

describe FeedbacksController do

	describe "creating with Ajax" do
		it "should increment count" do
			expect do
				xhr :post, :create, feedback: { name: "Example User", email: "user@example.com", feedback: "XHR test feedback"}
			end.to change(Feedback, :count).by(1)
		end
	end


end
