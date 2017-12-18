class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :attachment, AvatarUploader
  validates :user_id, presence: true
  acts_as_votable
   has_many :comments
end
