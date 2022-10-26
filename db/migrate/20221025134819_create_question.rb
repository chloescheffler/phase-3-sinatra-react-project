class CreateQuestion < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string "question"
      t.string "correct_answer"
      t.string "incorrect_answer_1"
      t.string "incorrect_answer_2"
      t.string "incorrect_answer_3"
      t.string "category"
    end
  end
end
