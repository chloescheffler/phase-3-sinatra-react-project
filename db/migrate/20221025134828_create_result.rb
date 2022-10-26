class CreateResult < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.string "name"
      t.integer "game_id"
      t.integer "user_id"
      t.integer "score"
    end
  end
end
