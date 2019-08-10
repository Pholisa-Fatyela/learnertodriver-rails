class Answer < ApplicationRecord
<<<<<<< HEAD
  belongs_to :question
=======
  has_many :responses
  has_many :questions, through: :responses
>>>>>>> master
end
