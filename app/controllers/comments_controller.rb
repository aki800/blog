class CommentsController < ApplicationController
  def create
     @comment = Comment.create(reply: comment_params[:reply], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    redirect_to "/tweets/#{@comment.tweet.id}"
  end

  private
  def comment_params
    params.permit(:reply, :tweet_id)
  end
end
