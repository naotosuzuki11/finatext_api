json.data do
  json.id @comment.id
  json.user do
    json.id @comment.user.id
    json.name @comment.user.name
    # json.name @omment.user.name
  end
  json.date @comment.comment_date
  json.text @comment.text
  json.comment_scores do
    json.array! @comment.comment_scores
  end
end
