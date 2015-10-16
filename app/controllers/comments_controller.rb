class CommentsController < ApplicationController
  def new

    @detail = Detail.find(params[:detail_id])
    @comment = @detail.comments.new
  end

  def show
    @detail = Detail.find(params[:detail_id])
    @comment = Comment.find(params[:id])
    render :show
  end

  def create

    @detail = Detail.find(params[:detail_id])
    @comment = @detail.comments.new(comment_params)
    @comment.rating = params[:rating]
    if @comment.save
      redirect_to genre_path(@detail.genre)
    else
      render :new
    end
  end

  def edit
    @detail = Detail.find(params[:detail_id])
    @comment = @detail.comments.find(params[:id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:detail_id])
    if @comment.update(comment_params)
      redirect_to details_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to detail_path
  end
end

private
def comment_params
  params.require(:comment).permit(:critique)
end
