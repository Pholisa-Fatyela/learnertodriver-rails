class CreateQuizQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_questions do |t|
      t.string :content
      t.string :explanation
      t.string :level
      t.boolean :draft
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end