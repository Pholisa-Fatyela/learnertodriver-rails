class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :info
      t.string :kind

      t.timestamps
    end
  end
end
