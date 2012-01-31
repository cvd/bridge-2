require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service))
  end

  it "renders attributes in <p>" do
    render
  end
end
