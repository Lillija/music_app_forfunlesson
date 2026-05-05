class Post < ApplicationRecord
  belongs_to :user
  belongs_to :album
  has_many :comments, dependent: :destroy

  serialize :reactions, coder: JSON

  def add_reaction(emoji)
    self.reactions ||= {}
    self.reactions[emoji] = self.reactions.fetch(emoji, 0) + 1
    save
  end
end