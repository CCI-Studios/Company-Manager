class CampaignTypesController < ApplicationController
  # GET /campaign_types
  # GET /campaign_types.xml
  def index
    @campaign_types = CampaignType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campaign_types }
    end
  end

  # GET /campaign_types/1
  # GET /campaign_types/1.xml
  def show
    @campaign_type = CampaignType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @campaign_type }
    end
  end

  # GET /campaign_types/new
  # GET /campaign_types/new.xml
  def new
    @campaign_type = CampaignType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @campaign_type }
    end
  end

  # GET /campaign_types/1/edit
  def edit
    @campaign_type = CampaignType.find(params[:id])
  end

  # POST /campaign_types
  # POST /campaign_types.xml
  def create
    @campaign_type = CampaignType.new(params[:campaign_type])

    respond_to do |format|
      if @campaign_type.save
        format.html { redirect_to(@campaign_type, :notice => 'Campaign type was successfully created.') }
        format.xml  { render :xml => @campaign_type, :status => :created, :location => @campaign_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @campaign_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campaign_types/1
  # PUT /campaign_types/1.xml
  def update
    @campaign_type = CampaignType.find(params[:id])

    respond_to do |format|
      if @campaign_type.update_attributes(params[:campaign_type])
        format.html { redirect_to(@campaign_type, :notice => 'Campaign type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @campaign_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_types/1
  # DELETE /campaign_types/1.xml
  def destroy
    @campaign_type = CampaignType.find(params[:id])
    @campaign_type.destroy

    respond_to do |format|
      format.html { redirect_to(campaign_types_url) }
      format.xml  { head :ok }
    end
  end
end
