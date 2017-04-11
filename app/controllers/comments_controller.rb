class CommentsController < ApplicationController

  def new
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comment = @blogpost.comments.new
  end

  def create
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comment = @blogpost.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment added successfully"
      redirect_to blogpost_path(@comment.blogpost)
    else
      flash[:alert] = "Comment was not added"
      render :new
    end
  end

  def edit
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comment = @blogpost.comments.find(params[:id])
  end

  def update
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comment = @blogpost.comments.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment updated successfully"
      redirect_to blogpost_path(@comment.blogpost)
    else
      flash[:alert] = "Comment was not updated"
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to blogpost_path(@comment.blogpost)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
