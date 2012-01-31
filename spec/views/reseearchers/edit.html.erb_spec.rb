require 'spec_helper'

describe "reseearchers/edit" do
  before(:each) do
    @reseearcher = assign(:reseearcher, stub_model(Reseearcher))
  end

  it "renders the edit reseearcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reseearchers_path(@reseearcher), :method => "post" do
    end
  end
end
