class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  validates :image, presence: true
	with_options presence: true do
    validates :sentence
    validates :meaning
    validates :explanation
  end
end
