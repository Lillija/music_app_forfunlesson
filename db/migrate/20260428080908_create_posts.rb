class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true
      t.text :content
      t.text :reactions # this will store emoji counts as a serialized hash

      t.timestamps
    end
  end
end
