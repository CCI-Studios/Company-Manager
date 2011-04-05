require 'spec_helper'

describe "project_statuses/new.html.erb" do
  before(:each) do
    assign(:project_status, stub_model(ProjectStatus,
      :title => "MyString",
      :type => "MyString",
      :ordering => 1
    ).as_new_record)
  end

  it "renders new project_status form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => project_statuses_path, :method => "post" do
      assert_select "input#project_status_title", :name => "project_status[title]"
      assert_select "input#project_status_type", :name => "project_status[type]"
      assert_select "input#project_status_ordering", :name => "project_status[ordering]"
    end
  end
end
