require 'spec_helper'

describe "reseearchers/new" do
  before(:each) do
    assign(:reseearcher, stub_model(Reseearcher).as_new_record)
  end

  it "renders new reseearcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reseearchers_path, :method => "post" do
    end
  end
end
