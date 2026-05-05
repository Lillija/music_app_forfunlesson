class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  # If using Devise:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
