class AddAlbumNameToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :album_name, :string
  end
end
