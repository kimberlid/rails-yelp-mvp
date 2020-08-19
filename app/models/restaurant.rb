class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(s"chinese", "italian", "japanese", "french", "belgian"),
  message: "%{value} is not a valid size" }, presence: true
  validates :rating, inclusion: {in: (0..5)}
end
