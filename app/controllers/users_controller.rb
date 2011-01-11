class UsersController < ApplicationController
  def index

	@users = User.find(:all)

  end

  def show

	@users = User.find(params[:id])

  end

end
