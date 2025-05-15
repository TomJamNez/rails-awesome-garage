class Review < ApplicationRecord
  belongs_to :car
  validates :comment, presence: true, length: { minimum: 4 }
  validates :rating, presence: true, numericality: { only_integer: true, in:(0..5) }
end
