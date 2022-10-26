class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "name"
      t.integer "user_id"
      t.string "score"
    end
  end
end
