class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  validates :name, presence: true, length: {minimum: 2, maximum: 20}
  validates :profile, length: {maximum: 100}
end
