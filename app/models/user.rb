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

  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship",  dependent: :destroy
  has_many :following, through: :following_relationships
  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships

 #フォローしているかを確認
 def following?(user)
   following_relationships.find_by(following_id: user.id)
 end

 #フォローするとき
 def follow(user)
   following_relationships.create!(following_id: user.id)
 end

 #フォローを外すとき
 def unfollow(user)
   following_relationships.find_by(following_id: user.id).destroy
 end

end
