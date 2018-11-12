require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    votes_for: Field::HasMany.with_options(class_name: "ActsAsVotable::Vote"),
    user: Field::BelongsTo,
    comments: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    content: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
    cached_votes_total: Field::Number,
    cached_votes_score: Field::Number,
    cached_votes_up: Field::Number,
    cached_votes_down: Field::Number,
    cached_weighted_score: Field::Number,
    cached_weighted_total: Field::Number,
    cached_weighted_average: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :votes_for,
    :user,
    :comments,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :votes_for,
    :user,
    :comments,
    :id,
    :title,
    :content,
    :created_at,
    :updated_at,
    :slug,
    :cached_votes_total,
    :cached_votes_score,
    :cached_votes_up,
    :cached_votes_down,
    :cached_weighted_score,
    :cached_weighted_total,
    :cached_weighted_average,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :votes_for,
    :user,
    :comments,
    :title,
    :content,
    :slug,
    :cached_votes_total,
    :cached_votes_score,
    :cached_votes_up,
    :cached_votes_down,
    :cached_weighted_score,
    :cached_weighted_total,
    :cached_weighted_average,
  ].freeze

  # Overwrite this method to customize how posts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(post)
  #   "Post ##{post.id}"
  # end
end
