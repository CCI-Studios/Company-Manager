class ScheduleBlocksController < ApplicationController
  # GET /schedule_blocks
  # GET /schedule_blocks.xml
  def index
    @schedule_blocks = ScheduleBlock.all
		@title = "Schedule Blocks"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @schedule_blocks }
    end
  end

  # GET /schedule_blocks/1
  # GET /schedule_blocks/1.xml
  def show
    @schedule_block = ScheduleBlock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @schedule_block }
    end
  end

  # GET /schedule_blocks/new
  # GET /schedule_blocks/new.xml
  def new
    @schedule_block = ScheduleBlock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @schedule_block }
    end
  end

  # GET /schedule_blocks/1/edit
  def edit
    @schedule_block = ScheduleBlock.find(params[:id])
  end

  # POST /schedule_blocks
  # POST /schedule_blocks.xml
  def create
    @schedule_block = ScheduleBlock.new(params[:schedule_block])

    respond_to do |format|
      if @schedule_block.save
        format.html { redirect_to(@schedule_block, :notice => 'Schedule block was successfully created.') }
        format.xml  { render :xml => @schedule_block, :status => :created, :location => @schedule_block }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @schedule_block.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schedule_blocks/1
  # PUT /schedule_blocks/1.xml
  def update
    @schedule_block = ScheduleBlock.find(params[:id])

    respond_to do |format|
      if @schedule_block.update_attributes(params[:schedule_block])
        format.html { redirect_to(@schedule_block, :notice => 'Schedule block was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @schedule_block.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_blocks/1
  # DELETE /schedule_blocks/1.xml
  def destroy
    @schedule_block = ScheduleBlock.find(params[:id])
    @schedule_block.destroy

    respond_to do |format|
      format.html { redirect_to(schedule_blocks_url) }
      format.xml  { head :ok }
    end
  end
end
