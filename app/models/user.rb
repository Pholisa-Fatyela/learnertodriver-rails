class User < ApplicationRecord
  before_save :create_name, :suggest_username

  extend FriendlyId
    friendly_id :username, use: :slugged

  # ensure usernames are unique
  validates_uniqueness_of :username

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :posts
  has_many :comments

  acts_as_voter

  def should_generate_new_friendly_id?
    slug.nil?  || username_changed?
  end

  private
    def create_name
      self.first_name = "none" if first_name.blank?
      self.last_name = "none" if last_name.blank?
      self.name = "#{first_name} #{last_name}"
    end

    def suggest_username
      self.username = name.parameterize
      # if self.username
      # self.username = name.parameterize
    end
end
