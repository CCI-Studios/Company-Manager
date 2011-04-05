require 'spec_helper'

describe "project_statuses/show.html.erb" do
  before(:each) do
    @project_status = assign(:project_status, stub_model(ProjectStatus,
      :title => "Title",
      :type => "Type",
      :ordering => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
