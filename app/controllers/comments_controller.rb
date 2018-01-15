class CommentsController < ApplicationController
	skip_before_action :verify_authenticity_token

def create
	# find posts with respect to post id and create a comment
	@post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    #redirect to posts page
    redirect_to post_path(@post)
end
def index
end

def destroy
	# find posts with respect to post id and destroy comments
	@post = Post.find(params[:post_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	#redirect to posts page
	redirect_to post_path(@post)
    end

    def show
    end
end
