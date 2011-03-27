require 'spec_helper'

describe "menus/new.html.erb" do
  before(:each) do
    assign(:menu, stub_model(Menu,
      :title => "MyText",
      :link => "MyText",
      :order => 1,
      :parent_id => 1
    ).as_new_record)
  end

  it "renders new menu form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => menus_path, :method => "post" do
      assert_select "textarea#menu_title", :name => "menu[title]"
      assert_select "textarea#menu_link", :name => "menu[link]"
      assert_select "input#menu_order", :name => "menu[order]"
      assert_select "input#menu_parent_id", :name => "menu[parent_id]"
    end
  end
end
