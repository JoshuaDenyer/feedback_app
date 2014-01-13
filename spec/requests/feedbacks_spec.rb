require 'spec_helper'

describe "Feedbacks Spec" do

	subject { page }

	describe "All pages should render the contact form" do
		before { visit root_path }

		it { should have_content("Feedback")}

	end

	describe "filling in the form" do

		before { visit root_path }

		describe "with valid information" do
			before  do

				fill_in "Name", 	with: "Example User"
				fill_in "Email", 	with: "user@example.com"
				fill_in "Feedback", with: "This is some example feedback"
				click_button "Submit"
			end	

			it "should create an entry in feedback database" do
				expect { click_button "Submit" }.to change(Feedback, :count).by(1)
			end
		end

		describe "with invalid information" do
			it "should notcreate an entry in feedback database" do
				expect { click_button "Submit" }.not_to change(Feedback, :count)
			end
		end

		
	end

end