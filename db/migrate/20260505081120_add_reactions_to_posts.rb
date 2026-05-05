class AddReactionsToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :reactions, :json, default: {}
  end
end
