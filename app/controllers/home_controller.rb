class HomeController < ApplicationController
  def index
    @resolutions = Resolution.find(:all, :offset => (Resolution.count * rand).to_i, :limit => 3 )
  end

end
