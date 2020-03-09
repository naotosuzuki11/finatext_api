json.data do
  json.id @comment.id
  json.user_id @comment.user.id
  json.date @comment.comment_date
  json.text @comment.text
end


