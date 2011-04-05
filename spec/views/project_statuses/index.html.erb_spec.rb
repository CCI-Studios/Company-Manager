require 'spec_helper'

describe "project_statuses/index.html.erb" do
  before(:each) do
    assign(:project_statuses, [
      stub_model(ProjectStatus,
        :title => "Title",
        :type => "Type",
        :ordering => 1
      ),
      stub_model(ProjectStatus,
        :title => "Title",
        :type => "Type",
        :ordering => 1
      )
    ])
  end

  it "renders a list of project_statuses" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
