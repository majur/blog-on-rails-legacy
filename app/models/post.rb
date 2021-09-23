class Post < ApplicationRecord
  # belongs_to :user
  default_scope -> { order(created_at: :desc) }
  # validates :user_id, presence: true
  validates :content, presence: true
  extend FriendlyId
  friendly_id :title, use: :slugged, :use => :history

  def should_generate_new_friendly_id?
    title_changed?
  end
end
