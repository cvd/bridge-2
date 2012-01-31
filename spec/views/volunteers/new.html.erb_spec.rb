require 'spec_helper'

describe "volunteers/new" do
  before(:each) do
    assign(:volunteer, stub_model(Volunteer).as_new_record)
  end

  it "renders new volunteer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => volunteers_path, :method => "post" do
    end
  end
end
