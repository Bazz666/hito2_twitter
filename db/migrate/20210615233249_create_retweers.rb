class CreateRetweers < ActiveRecord::Migration[6.1]
  def change
    create_table :retweers do |t|
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
