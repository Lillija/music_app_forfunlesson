class User
  include Mongoid::Document
  include Mongoid::Timestamps

  # Devise modules
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  field :email, type: String
  field :encrypted_password, type: String
end