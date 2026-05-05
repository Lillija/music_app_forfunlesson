class RemoveAlbumNameFromPosts < ActiveRecord::Migration[8.1]
  def change
    remove_column :posts, :album_name, :string
  end
end
