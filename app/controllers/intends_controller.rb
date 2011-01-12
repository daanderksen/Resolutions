class IntendsController < ApplicationController

  # POST /resolutions
  # POST /resolutions.xml
  def create
    @intend = Intend.new(:user_id => current_user.id, :resolution_id => params[:resolution_id])

    respond_to do |format|
      if not current_user.resolutions.include?(Resolution.find(params[:resolution_id])) and @intend.save
        format.html { redirect_to(resolution_path(params[:resolution_id]), :notice => 'You now intend to do this.') }
        format.xml  { render :xml => @intend, :status => :created, :location => @intend }
      else
        format.html { redirect_to(resolution_path(params[:resolution_id]), :notice => 'You already intend to do this.') }
        format.xml  { render :xml => @intend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /intends/1
  # DELETE /intends/1.xml
  # 1 = resolution_id!
  def destroy
    @intend = current_user.intends.where(:resolution_id => params[:id])
    @intend.destroy_all

    respond_to do |format|
      format.html { redirect_to(resolution_path(params[:id])) }
      format.xml  { head :ok }
    end
  end
end
