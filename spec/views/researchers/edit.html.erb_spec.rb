require 'spec_helper'

describe "researchers/edit" do
  before(:each) do
    @researcher = assign(:researcher, stub_model(researcher))
  end

  it "renders the edit researcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => researchers_path(@researcher), :method => "post" do
    end
  end
end
