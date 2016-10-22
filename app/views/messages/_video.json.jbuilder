json.(video, :created_at, :updated_at, :title, :content, :id)
json.comments(video.comments) do |comment|
  json.extract! comment, :id, :content
  json.user do
    json.extract! comment.user, :id, :name
  end
end