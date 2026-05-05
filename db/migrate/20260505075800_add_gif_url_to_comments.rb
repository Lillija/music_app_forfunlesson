class AddGifUrlToComments < ActiveRecord::Migration[8.1]
  def change
    add_column :comments, :gif_url, :string
  end
end
