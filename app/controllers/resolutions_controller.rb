class ResolutionsController < ApplicationController
  before_filter :authenticate_user!


  # GET /resolutions
  # GET /resolutions.xml
  def index
    @resolutions = Resolution.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resolutions }
    end
  end

  # GET /resolutions/1
  # GET /resolutions/1.xml
  def show
    @resolution = Resolution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resolution }
    end
  end

  # GET /resolutions/new
  # GET /resolutions/new.xml
  def new
    @resolution = Resolution.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resolution }
    end
  end

  # GET /resolutions/1/edit
  def edit
    @resolution = Resolution.find(params[:id])
  end

  # POST /resolutions
  # POST /resolutions.xml
  def create
    @resolution = Resolution.new(params[:resolution])

    respond_to do |format|
      if @resolution.save
        format.html { redirect_to(@resolution, :notice => 'Resolution was successfully created.') }
        format.xml  { render :xml => @resolution, :status => :created, :location => @resolution }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resolution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resolutions/1
  # PUT /resolutions/1.xml
  def update
    @resolution = Resolution.find(params[:id])

    respond_to do |format|
      if @resolution.update_attributes(params[:resolution])
        format.html { redirect_to(@resolution, :notice => 'Resolution was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resolution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resolutions/1
  # DELETE /resolutions/1.xml
  def destroy
    @resolution = Resolution.find(params[:id])
    @resolution.destroy

    respond_to do |format|
      format.html { redirect_to(resolutions_url) }
      format.xml  { head :ok }
    end
  end
end
