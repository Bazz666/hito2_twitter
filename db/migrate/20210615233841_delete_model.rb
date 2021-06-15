class DeleteModel < ActiveRecord::Migration[6.1]
  def change
  drop_table :retweers
  end
end
