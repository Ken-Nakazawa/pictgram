class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to controller: 'topics', action: 'show', id: params[:comment][:topic_id]
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :topic_id, :body)
  end

end
