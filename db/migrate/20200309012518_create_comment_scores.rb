class CreateCommentScores < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_scores do |t|
      t.references :comment, foreign_key: true
      t.integer :score_type
      t.float :score

      t.timestamps
    end
  end
end
