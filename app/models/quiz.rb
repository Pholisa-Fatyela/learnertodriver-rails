class Quiz < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :specifications
  has_many :questions, through: :specifications
end
