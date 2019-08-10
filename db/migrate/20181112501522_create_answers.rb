class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :content
      t.string :explanation
      t.references :question, foreign_key: true
      t.references :correct, foreign_key: { to_table: :answers }, index: true

      t.timestamps
    end
  end
end
