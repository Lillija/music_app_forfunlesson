class AddNameToAlbums < ActiveRecord::Migration[8.1]
  def change
    add_column :albums, :name, :string
  end
end
