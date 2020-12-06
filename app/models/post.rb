class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  attachment :image
  validates :image, presence: true
	with_options presence: true do
    validates :sentence
    validates :meaning
    validates :explanation
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search_for(content, method)
      Post.where("sentence LIKE ? OR meaning LIKE ?", "%"+content+"%", "%"+content+"%")
  end
end
