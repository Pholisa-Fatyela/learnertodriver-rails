class AddQuestionIdToQuestionOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :question_options, :quiz_question_id, :integer
    add_index :question_options, :quiz_question_id 
  end
end
