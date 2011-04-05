require 'spec_helper'

describe ProjectStatusesController do

  def mock_project_status(stubs={})
    (@mock_project_status ||= mock_model(ProjectStatus).as_null_object).tap do |project_status|
      project_status.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all project_statuses as @project_statuses" do
      ProjectStatus.stub(:all) { [mock_project_status] }
      get :index
      assigns(:project_statuses).should eq([mock_project_status])
    end
  end

  describe "GET show" do
    it "assigns the requested project_status as @project_status" do
      ProjectStatus.stub(:find).with("37") { mock_project_status }
      get :show, :id => "37"
      assigns(:project_status).should be(mock_project_status)
    end
  end

  describe "GET new" do
    it "assigns a new project_status as @project_status" do
      ProjectStatus.stub(:new) { mock_project_status }
      get :new
      assigns(:project_status).should be(mock_project_status)
    end
  end

  describe "GET edit" do
    it "assigns the requested project_status as @project_status" do
      ProjectStatus.stub(:find).with("37") { mock_project_status }
      get :edit, :id => "37"
      assigns(:project_status).should be(mock_project_status)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created project_status as @project_status" do
        ProjectStatus.stub(:new).with({'these' => 'params'}) { mock_project_status(:save => true) }
        post :create, :project_status => {'these' => 'params'}
        assigns(:project_status).should be(mock_project_status)
      end

      it "redirects to the created project_status" do
        ProjectStatus.stub(:new) { mock_project_status(:save => true) }
        post :create, :project_status => {}
        response.should redirect_to(project_status_url(mock_project_status))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved project_status as @project_status" do
        ProjectStatus.stub(:new).with({'these' => 'params'}) { mock_project_status(:save => false) }
        post :create, :project_status => {'these' => 'params'}
        assigns(:project_status).should be(mock_project_status)
      end

      it "re-renders the 'new' template" do
        ProjectStatus.stub(:new) { mock_project_status(:save => false) }
        post :create, :project_status => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested project_status" do
        ProjectStatus.should_receive(:find).with("37") { mock_project_status }
        mock_project_status.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :project_status => {'these' => 'params'}
      end

      it "assigns the requested project_status as @project_status" do
        ProjectStatus.stub(:find) { mock_project_status(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:project_status).should be(mock_project_status)
      end

      it "redirects to the project_status" do
        ProjectStatus.stub(:find) { mock_project_status(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(project_status_url(mock_project_status))
      end
    end

    describe "with invalid params" do
      it "assigns the project_status as @project_status" do
        ProjectStatus.stub(:find) { mock_project_status(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:project_status).should be(mock_project_status)
      end

      it "re-renders the 'edit' template" do
        ProjectStatus.stub(:find) { mock_project_status(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested project_status" do
      ProjectStatus.should_receive(:find).with("37") { mock_project_status }
      mock_project_status.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the project_statuses list" do
      ProjectStatus.stub(:find) { mock_project_status }
      delete :destroy, :id => "1"
      response.should redirect_to(project_statuses_url)
    end
  end

end
