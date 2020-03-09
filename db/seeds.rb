# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
User.destroy_all
Comment.destroy_all
CommentScore.destroy_all



(0..10).each do |number|
  uri = "https://interview-external.moneywelfare.com/users/#{number}"
  user_data = HTTParty.get(uri)
  user = User.new(id: user_data["id"], name: user_data["name"])
  if user.valid?
    user.save!
  else
  end
end



CSV.foreach('db/usercomments.csv') do |row|
  comment = Comment.new(id: row[0], user: User.find(row[1]), comment_date: row[2], text: row[3])
  if comment.valid?
    comment.save
  else
  end
end

CSV.foreach('db/commentscores.csv') do |row|
  comment_score = CommentScore.create!(comment: Comment.find(row[0]), score_type: row[1], score: row[2])
  if comment_score.valid?
    comment_score.save
  else
  end
end
