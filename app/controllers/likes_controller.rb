class LikesController < ApplicationController

  def create
    #1. find the post
    @post = Post.find(params[:id])
    #2. store a like in the db for this post and current_user
    @like = Like.find_by(
      :user_id => current_user.id,
      :post_id => @post.id
    )

    if @like
      #aka @like.present?
      @like.destroy
    else
      Like.create({
        :user_id => current_user.id,
        :post_id => @post.id
      })
        #aka @like = Like.new
        #@like.user_id = current_user.id
        #@like.post_id = @post.id
        # @like.save
      
      end
    end
end
