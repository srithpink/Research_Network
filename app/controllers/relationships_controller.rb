class RelationshipsController < ApplicationController

def new
	@relationship = Relationship.new
end
def index
	@user = User.all
end
def create 
	# find the id to follow and create a realtionship
	user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_back fallback_location: root_path
end

def destroy
	# vice versa
	user = Relationship.find(params[:id]).followed
	current_user.unfollow(user)
	redirect_back fallback_location: root_path
end

def update
end

end
