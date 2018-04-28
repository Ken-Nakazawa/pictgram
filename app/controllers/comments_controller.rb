class CommentsController < ApplicationController
  def create
    comment = Comment.new
    binding.pry
    comment.topic = params[:comment][:topic]
    comment.user_id = params[:comment][:user_id]
    comment.topic_id = params[:comment][:topic_id]
    if comment.save
      redirect_to topics_path, notice: 'コメント成功'
    else
    flash.now[:alert] = "コメント失敗"
    render :new
    end
  end
  def index
  @comment_topics = current_user.comment_topics
  end
end
