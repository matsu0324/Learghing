class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
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
    if method == 'perfect'
      Post.where(sentence: content)
    elsif method == 'forward'
      Post.where('sentence LIKE ?', content+'%')
    elsif method == 'backward'
      Post.where('sentence LIKE ?', '%'+content)
    else
      Post.where('sentence LIKE ?', '%'+content+'%')
    end
  end
end
