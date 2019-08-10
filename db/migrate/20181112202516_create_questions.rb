class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
<<<<<<< HEAD
      t.string :explanation
=======
      t.string :level
      t.boolean :draft
      t.integer :question_count, default: 0
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
>>>>>>> master
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end