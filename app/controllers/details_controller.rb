class DetailsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @detail = @post.details.new
  end

  def show
    @post = Post.find(params[:post_id])
    @detail = Detail.find(params[:id])
    render :show
  end

  def create
    @post = Post.find(params[:post_id])
    @detail = @post.details.new(detail_params)
    if @detail.save
      redirect_to post_path(@detail.post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @detail = @post.details.find(params[:id])
    render :edit
  end

  def update
    @detail = Detail.find(params[:post_id])
    if @detail.update(detail_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
    redirect_to posts_path
  end
end

private
def detail_params
  params.require(:detail).permit(:name)
end
