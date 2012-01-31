require 'spec_helper'

describe "volunteers/index" do
  before(:each) do
    assign(:volunteers, [
      stub_model(Volunteer),
      stub_model(Volunteer)
    ])
  end

  it "renders a list of volunteers" do
    render
  end
end
