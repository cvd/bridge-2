require 'spec_helper'

describe "services/index" do
  before(:each) do
    assign(:services, [
      stub_model(Service),
      stub_model(Service)
    ])
  end

  it "renders a list of services" do
    render
  end
end
