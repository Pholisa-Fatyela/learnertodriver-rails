class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :image_url
      t.string :explanation
      t.string :answer

      t.timestamps
    end
  end
end
