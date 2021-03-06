require 'spec_helper'

describe ClientsController do

  def mock_client(stubs={})
    (@mock_client ||= mock_model(Client).as_null_object).tap do |client|
      client.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all clients as @clients" do
      Client.stub(:all) { [mock_client] }
      get :index
      assigns(:clients).should eq([mock_client])
    end
  end

  describe "GET show" do
    it "assigns the requested client as @client" do
      Client.stub(:find).with("37") { mock_client }
      get :show, :id => "37"
      assigns(:client).should be(mock_client)
    end
  end

  describe "GET new" do
    it "assigns a new client as @client" do
      Client.stub(:new) { mock_client }
      get :new
      assigns(:client).should be(mock_client)
    end
  end

  describe "GET edit" do
    it "assigns the requested client as @client" do
      Client.stub(:find).with("37") { mock_client }
      get :edit, :id => "37"
      assigns(:client).should be(mock_client)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created client as @client" do
        Client.stub(:new).with({'these' => 'params'}) { mock_client(:save => true) }
        post :create, :client => {'these' => 'params'}
        assigns(:client).should be(mock_client)
      end

      it "redirects to the created client" do
        Client.stub(:new) { mock_client(:save => true) }
        post :create, :client => {}
        response.should redirect_to(client_url(mock_client))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved client as @client" do
        Client.stub(:new).with({'these' => 'params'}) { mock_client(:save => false) }
        post :create, :client => {'these' => 'params'}
        assigns(:client).should be(mock_client)
      end

      it "re-renders the 'new' template" do
        Client.stub(:new) { mock_client(:save => false) }
        post :create, :client => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested client" do
        Client.should_receive(:find).with("37") { mock_client }
        mock_client.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :client => {'these' => 'params'}
      end

      it "assigns the requested client as @client" do
        Client.stub(:find) { mock_client(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:client).should be(mock_client)
      end

      it "redirects to the client" do
        Client.stub(:find) { mock_client(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(client_url(mock_client))
      end
    end

    describe "with invalid params" do
      it "assigns the client as @client" do
        Client.stub(:find) { mock_client(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:client).should be(mock_client)
      end

      it "re-renders the 'edit' template" do
        Client.stub(:find) { mock_client(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested client" do
      Client.should_receive(:find).with("37") { mock_client }
      mock_client.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the clients list" do
      Client.stub(:find) { mock_client }
      delete :destroy, :id => "1"
      response.should redirect_to(clients_url)
    end
  end

end
