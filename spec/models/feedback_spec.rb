require 'spec_helper'

describe Feedback do
  
  before { @feedback = Feedback.create(name: "Example User", email: "example@email.com", feedback: "this is example feedback", devices: 3, orgId: 5, url:"/") }

  subject { @feedback }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:feedback) }
  it { should respond_to(:devices) }				
  it { should respond_to(:orgId) }				
  it { should respond_to(:url) }				

  it { should be_valid }

 end
