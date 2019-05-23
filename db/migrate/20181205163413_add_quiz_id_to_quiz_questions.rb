class AddQuizIdToQuizQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_questions, :quiz_id, :integer
    add_index :quiz_questions, :quiz_id 
  end
end