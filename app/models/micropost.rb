class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favorites_users, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
