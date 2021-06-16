class Tweet < ApplicationRecord
  belongs_to :user
  accepts_nested_attributes_for :user
  has_many  :likes, dependent: :destroy
  validates :content, presence: true
  acts_as_votable
  has_many :retweets ,dependent: :destroy
  #delegate :profile_photo, to: :user, prefix: :true
  
  def to_s
    username
  end
  

  def share
    Tweet.where(origin: self.id).count
  end
end
