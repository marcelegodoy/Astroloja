class State < ApplicationRecord
  has_many :services
  has_many :user
  validates :name, presence: true
end
