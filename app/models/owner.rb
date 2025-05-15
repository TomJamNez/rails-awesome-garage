class Owner < ApplicationRecord
  has_many :cars
  has_many :reviews, through: :cars
  has_many :favourites, through: :cars

  validates :nickname, presence: true, uniqueness: true

end
