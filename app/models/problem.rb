class Problem < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  attachment :image

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end

  def self.search(search)
    if search != ""
      Problem.where('title LIKE(?)', "%#{search}%")
    else
      Problem.all
    end
  end
end
