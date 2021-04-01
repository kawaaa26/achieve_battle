class ShortGoal < ApplicationRecord
  validates :title, :detail, :experience, presence: true
  # has_many_attached :images
end
