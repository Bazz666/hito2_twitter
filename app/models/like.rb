class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  validates :user_id, uniqueness: {scope: :tweet_id}

  def to_s
    username
  end
end
