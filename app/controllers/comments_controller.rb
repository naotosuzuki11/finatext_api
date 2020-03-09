class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :show_two]

  def index
    @comments = Comment.all
  end

  def show
    # render json: {data: @comment}
  end

  def home
    render json: {overview: 'Finatext API Endpoints', v1: "http://localhost:8080/v1/comments/:ID.json", v2: "http://localhost:8080/v2/comments/:ID.json"}
  end

  def show_two
    # render json: {data: @comment.id}
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :comment_date, :text)
  end
end
