class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments, id: false, primary_key: :id do |t|
      t.primary_key :id
      t.references :user, foreign_key: true
      t.string :comment_date
      t.string :text

      t.timestamps
    end
  end
end
