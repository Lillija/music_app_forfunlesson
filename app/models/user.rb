class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email, type: String
  field :password, type: String

  has_many :posts
  has_many :comments
end