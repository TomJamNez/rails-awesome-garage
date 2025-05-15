class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy

  validates :model, presence: true
  validates :brand, presence: true
  validates :year, presence: true, length: { is: 4 }
  validates :fuel, presence: true, inclusion: { in: %w(petrol diesel electric), message: "%{value} is not a valid fuel type" }
  validates :brand, uniqueness: {scope: [:model, :owner_id], message: "Owner already has brand and model" }
end
