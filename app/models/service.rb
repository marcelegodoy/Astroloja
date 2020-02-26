class Service < ApplicationRecord
  has_many :orders
  belongs_to :user
  belongs_to :category
  belongs_to :state

  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :city, presence: true
end
