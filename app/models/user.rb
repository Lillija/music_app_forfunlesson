class User
  include Mongoid::Document
  include Mongoid::Timestamps

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  field :email, type: String
  field :encrypted_password, type: String

  has_many :posts
  has_many :comments   # 👈 IMPORTANT
end