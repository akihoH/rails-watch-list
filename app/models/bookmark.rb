class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 7 }
end
