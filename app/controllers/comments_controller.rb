class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  # comments_controller.rb
  def index
    render json: { comments: Comment.all }, methods: :post_id
  end

  def show
    render json: { comment: @comment }, methods: :post_id
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: { comment: @comment }, methods: :post_id, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end
end
