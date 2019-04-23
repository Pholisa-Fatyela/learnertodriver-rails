class User < ApplicationRecord
  before_save :parameterize_slug

  extend FriendlyId
    friendly_id :name, use: :slugged

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :posts
  has_many :comments

  # ensure usernames are unique
  validates_uniqueness_of :username

  acts_as_voter

  private
    def parameterize_slug
      self.slug.parameterize
    end
end
