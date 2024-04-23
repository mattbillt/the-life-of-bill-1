class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @match = Match.find(params[:match_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @match = Match.find(params[:match_id])
    @comment.match = @match
    if @comment.save
      redirect_to match_path(@match)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to match_path(@comment.match), status: :see_other
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
