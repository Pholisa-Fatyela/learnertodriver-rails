class AddQuizIdToQuestions < ActiveRecord::Migration[5.2]
    add_column :questions, :quiz_id, :integer
    add_index :questions, :quiz_id
end