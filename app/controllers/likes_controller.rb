class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = Like.new
    @like.user = current_user
    @like.post = @post

    if @like.save
      respond_to do |format|
        format.html { redirect_to @post, notice: "You have liked this post!" }
        format.json { render json: { likes: @post.likes.count } }
      end
    else
      respond_to do |format|
        format.html { redirect_to @post, alert: "Like it!" }
      end
    end
  end
end
