class CreateSpecifications < ActiveRecord::Migration[5.2]
  def change
    create_table :specifications do |t|
      t.references :question, foreign_key: true
      t.references :quiz, foreign_key: true
    end
  end
end
