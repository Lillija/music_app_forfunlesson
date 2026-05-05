class RemoveTitleFromAlbums < ActiveRecord::Migration[8.1]
  def change
    remove_column :albums, :title, :string
  end
end
