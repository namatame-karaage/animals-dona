class Problem < ApplicationRecord
  belongs_to :user
  attachment :image

  with_options presence: true do
    validates :title
    validates :body
    validates :iamge
  end
end