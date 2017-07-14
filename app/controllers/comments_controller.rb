class CommentsController < ApplicationController
  before_action :comment_params, only:[:create]

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save(validate: false)
    redirect_to article_path(@comment.article)
  end

  private

  def comment_params
  	params.require(:comment).permit(:id, :commenter, :content, :article_id)
  end

end
