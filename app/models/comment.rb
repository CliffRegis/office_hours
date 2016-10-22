class Comment < ActivreRecord::Base
  belongs_to :video
  belongs_to :user
  after_create_commit {CommentBroadcastJob.perform_later self}
end
