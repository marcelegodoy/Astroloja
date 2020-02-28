class Order < ApplicationRecord
  belongs_to :service
  belongs_to :user

  validates :ordered_at, presence: true
  validates :user_id, presence: true
  validates :service_id, presence: true
end
