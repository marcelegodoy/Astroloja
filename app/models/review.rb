class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :stars, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :description, presence: true
end
