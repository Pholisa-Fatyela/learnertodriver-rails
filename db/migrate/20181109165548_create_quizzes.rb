class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :kind
      t.string :info
      t.integer :duration, default: 3600
      t.integer :question_count, default: 0
      t.string :description

      t.timestamps
    end
  end
end
