class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, type: String
  field :image_url, type: String
  field :reactions, type: Hash, default: {}

  belongs_to :user, inverse_of: :posts
  has_many :comments, dependent: :destroy, inverse_of: :post

  # Add or increment reaction emoji
  def add_reaction(emoji)
    self.reactions ||= {}
    self.reactions[emoji] ||= 0
    self.reactions[emoji] += 1
    save!
  end
end