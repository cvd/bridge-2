require 'spec_helper'

describe "reseearchers/show" do
  before(:each) do
    @reseearcher = assign(:reseearcher, stub_model(Reseearcher))
  end

  it "renders attributes in <p>" do
    render
  end
end
