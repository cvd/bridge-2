require 'spec_helper'

describe "volunteers/show" do
  before(:each) do
    @volunteer = assign(:volunteer, stub_model(Volunteer))
  end

  it "renders attributes in <p>" do
    render
  end
end
