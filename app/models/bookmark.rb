class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, presence: true, length: {minimum: 6}
  validates :movie, presence: true
  validates :list, uniqueness: {scope: :movie}
end
