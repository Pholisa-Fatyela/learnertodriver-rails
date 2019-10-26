class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :content
      t.string :explanation
      t.references :correct, foreign_key: { to_table: :answers }, index: true
    end
  end
end
