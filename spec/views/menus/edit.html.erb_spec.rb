require 'spec_helper'

describe "menus/edit.html.erb" do
  before(:each) do
    @menu = assign(:menu, stub_model(Menu,
      :new_record? => false,
      :title => "MyText",
      :link => "MyText",
      :order => 1,
      :parent_id => 1
    ))
  end

  it "renders the edit menu form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => menu_path(@menu), :method => "post" do
      assert_select "textarea#menu_title", :name => "menu[title]"
      assert_select "textarea#menu_link", :name => "menu[link]"
      assert_select "input#menu_order", :name => "menu[order]"
      assert_select "input#menu_parent_id", :name => "menu[parent_id]"
    end
  end
end
