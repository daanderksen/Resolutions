class UsersController < ApplicationController
  def index
    @users = User.find(:all)
  end
<<<<<<< HEAD

  def show

	@users = User.find(params[:id])

  end

=======
>>>>>>> origin/HEAD
end
