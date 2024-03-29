require 'spec_helper'

describe "articles/show.html.erb" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "Title",
      :body => "MyText",
      :short_text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
