class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :artist, type: String
  field :image_url, type: String
  field :content, type: String
  field :reactions, type: Hash, default: {}

  belongs_to :user
  has_many :comments, dependent: :destroy   # 👈 IMPORTANT

  def react!(emoji)
    self.inc("reactions.#{emoji}" => 1)
  end
end