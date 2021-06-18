class Friend < ApplicationRecord

   
    belongs_to :user


    def follow?(other_user)
        follow.include?(other_user)
    end

     
 
end
