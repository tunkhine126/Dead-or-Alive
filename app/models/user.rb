class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false}
  belongs_to :location
  # belongs_to :quiz
  # has_many :questions, through: :quiz
  has_many :answers, through: :questions
  has_many :posts, dependent: :destroy
end
