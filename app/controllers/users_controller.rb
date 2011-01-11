class UsersController < ApplicationController
  def index

	@users = User.find(1)

  end

end
