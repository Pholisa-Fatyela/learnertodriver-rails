class Question < ApplicationRecord
  belongs_to :quiz
<<<<<<< HEAD
  has_many :answers
=======

  has_many :responses
  has_many :answers, through: :responses
>>>>>>> master
end
