class DeleteFriend < ActiveRecord::Migration[6.1]
  def change
    drop_table :friends
  end
end