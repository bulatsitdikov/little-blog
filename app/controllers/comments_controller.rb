class CommentsController < ApplicationController
  before_action :authenticate_user!
  expose(:comment)
  expose(:comments)
  expose(:article)

  def create
    comment = comments.new(comment_params)
    comment.save
    redirect_to article_path(article)
  end

  def destroy
    comment.destroy
    redirect_to article_path(article)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :article_id).merge(
      user_id: current_user.id, article_id: article.id
      )
  end
end
