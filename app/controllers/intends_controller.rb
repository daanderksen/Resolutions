class IntendsController < ApplicationController
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
end
