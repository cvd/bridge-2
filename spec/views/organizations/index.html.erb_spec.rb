require 'spec_helper'

describe "organizations/index.html.erb" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      ),
      stub_model(Organization,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "li a", :text => "Name".to_s, :count => 2
  end
end
