class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "name"
      t.integer "user_id"
      t.integer "score"
    end
  end
end
