require "spec_helper"

describe ProjectStatusesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/project_statuses" }.should route_to(:controller => "project_statuses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/project_statuses/new" }.should route_to(:controller => "project_statuses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/project_statuses/1" }.should route_to(:controller => "project_statuses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/project_statuses/1/edit" }.should route_to(:controller => "project_statuses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/project_statuses" }.should route_to(:controller => "project_statuses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/project_statuses/1" }.should route_to(:controller => "project_statuses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/project_statuses/1" }.should route_to(:controller => "project_statuses", :action => "destroy", :id => "1")
    end

  end
end
