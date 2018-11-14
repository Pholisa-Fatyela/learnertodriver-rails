class Quiz < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

    has_many :questions
end
