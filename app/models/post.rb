class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :attachment, AvatarUploader
  validates :user_id, presence: true
  acts_as_votable
   # allow user to define these
      aliases = {
        :vote_up_for    => [:likes, :upvotes, :up_votes],
        :vote_down_for  => [:dislikes, :downvotes, :down_votes],
        :unvote_for     => [:unlike, :undislike],
        :voted_on?      => [:voted_for?],
        :voted_up_on?   => [:voted_up_for?, :liked?],
        :voted_down_on? => [:voted_down_for?, :disliked?],
        :voted_as_when_voting_on => [:voted_as_when_voted_on, :voted_as_when_voting_for, :voted_as_when_voted_for],
        :find_up_voted_items   => [:find_liked_items],
        :find_down_voted_items => [:find_disliked_items]
      }
end
