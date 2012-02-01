require 'spec_helper'

describe "reseearchers/index" do
  before(:each) do
    assign(:reseearchers, [
      stub_model(Reseearcher),
      stub_model(Reseearcher)
    ])
  end

  it "renders a list of reseearchers" do
    render
  end
end
