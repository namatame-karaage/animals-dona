class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  attachment :profile_image

  has_many :problems, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_problems, through: :likes, source: :problem
  def already_liked?(problem)
    self.likes.exists?(problem_id: problem.id)
  end
end
