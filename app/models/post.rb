class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_votable
  has_rich_text :content

  belongs_to :user
  has_many :comments

  enum status: [:published, :unpublished, :draft, :not_set]
	
	# scope :published, -> { where(published: true) }
end