class Friend < ApplicationRecord

   
    belongs_to :user


    def follow?(user)
        return (friends.where('friend_id=?', user))
    end
end
