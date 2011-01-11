class HomeController < ApplicationController
  def index
    if not current_user
      @resolutions = Resolution.find(:all, :offset => (Resolution.count * rand).to_i, :limit => 3 )
      render 'index_not_logged_in'
    else
      @my_resolutions = current_user.resolutions
      @resolutions = Resolution.all
      render 'index'
    end
  end

end
