class Service < ApplicationRecord
  has_many :orders
  has_many :reviews
  belongs_to :user
  belongs_to :category
  belongs_to :state
  has_one_attached :photo

  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :city, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
