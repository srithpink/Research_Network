class PmembersController < ApplicationController
  # display ist of users
def index
  	@user = User.all
  end

  def show
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new
  end
end
