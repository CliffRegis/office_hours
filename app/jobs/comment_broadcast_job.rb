class CommentBroadcastJob < ApplicationJob
  def perform(comment)
    ActionCable.server.broadcast "videos:#{comment.video_id}:comments",
      comment: CommentsController.render(partial: 'comments/comment', locals: { comment: comment })
  end
end
