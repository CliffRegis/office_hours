class CommentsController < ApplicationController
	before_action :set_video
  def create
  	@comment = Comment.create! content: params[:comment][:content], video: @video, user: @current_user
  end

 private
  def set_video
  	@video = Video.find(params[:video_id])
  end
end
