


CSV.foreach("db/commentscores.csv") do |row|
  CommentScore.create!(comment: Comment.find(row[0], score_type: row[1], score: row[2])
                       end
