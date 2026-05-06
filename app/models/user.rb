class User
  include Mongoid::Document
  include Mongoid::Timestamps

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :validatable

  field :email, type: String
  field :encrypted_password, type: String

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end