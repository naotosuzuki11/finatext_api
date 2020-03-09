class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: false, primary_key: :id do |t|
      t.primary_key :id
      t.string :name

      t.timestamps
    end
  end
end
