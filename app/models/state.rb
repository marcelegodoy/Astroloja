class State < ApplicationRecord
  has_many :services
  has_one_attached :photo

  validates :name, presence: true
end
