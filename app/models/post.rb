class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, type: String
  field :album_name, type: String
  field :artist, type: String
  field :reactions, type: Hash, default: {}

  belongs_to :user, optional: true
end