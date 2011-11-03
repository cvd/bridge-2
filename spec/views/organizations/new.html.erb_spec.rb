require 'spec_helper'

describe "organizations/new.html.erb" do
  before(:each) do
    assign(:organization, stub_model(Organization,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ).as_new_record)
  end

  it "renders new organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizations_path, :method => "post" do
      assert_select "input#organization_name", :name => "organization[name]"
      assert_select "input#organization_address", :name => "organization[address]"
      assert_select "input#organization_city", :name => "organization[city]"
      assert_select "input#organization_state", :name => "organization[state]"
      assert_select "input#organization_zip", :name => "organization[zip]"
    end
  end
end
