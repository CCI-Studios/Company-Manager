class MenusController < ApplicationController
  # GET /menus
  # GET /menus.xml
  def index
    @menus = Menu.roots

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @menus }
    end
  end

  # GET /menus/1
  # GET /menus/1.xml
  def show
    @menu = Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menu }
    end
  end

  # GET /menus/new
  # GET /menus/new.xml
  def new
    @menu = Menu.new
    @routes = [
                { :name => "-Seperator-", :route => "" },
                { :name => "Activities", :route => activities_path },
                { :name => "Campaigns", :route => campaigns_path },
                { :name => "Clients", :route => clients_path },
                { :name => "Companies", :route => companies_path },
                { :name => "Dashboard", :route => dashboard_path },
                { :name => "Departments", :route => departments_path },
                { :name => "Employees", :route => employees_path },
                { :name => "Menus", :route => menus_path },
                { :name => "Projects", :route => projects_path },
                { :name => "Sales", :route => sales_path },
                { :name => "Schedules", :route => schedules_path },
                { :name => "Todos", :route => todos_path },
                { :name => "Users", :route => users_path },
              ]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menu }
    end
  end

  # GET /menus/1/edit
  def edit
    @menu = Menu.find(params[:id])
    @routes = [
                { :name => "-Seperator-", :route => "" },
                { :name => "Activities", :route => activities_path },
                { :name => "Campaigns", :route => campaigns_path },
                { :name => "Clients", :route => clients_path },
                { :name => "Companies", :route => companies_path },
                { :name => "Dashboard", :route => dashboard_path },
                { :name => "Departments", :route => departments_path },
                { :name => "Employees", :route => employees_path },
                { :name => "Menus", :route => menus_path },
                { :name => "Projects", :route => projects_path },
                { :name => "Sales", :route => sales_path },
                { :name => "Schedules", :route => schedules_path },
                { :name => "Todos", :route => todos_path },
                { :name => "Users", :route => users_path },
              ]
  end

  # POST /menus
  # POST /menus.xml
  def create
    @menu = Menu.new(params[:menu])

    respond_to do |format|
      if @menu.save
        format.html { redirect_to(@menu, :notice => 'Menu was successfully created.') }
        format.xml  { render :xml => @menu, :status => :created, :location => @menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /menus/1
  # PUT /menus/1.xml
  def update
    @menu = Menu.find(params[:id])

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        format.html { redirect_to(@menu, :notice => 'Menu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.xml
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to(menus_url) }
      format.xml  { head :ok }
    end
  end
end
