class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_validation :set_slug, only: [:create, :update]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :services, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :reviews
  belongs_to :state

  validates :name, presence: true
  validates :username, uniqueness: true, presence: true,  format: { with: /\A([a-z_0-9]*)\z/,
    message: "username must have only lowercase letters, numbers and/or _" }
  validates :state, presence: true
  validates :email, presence: true, uniqueness: true

  def to_param
    "#{slug}"
  end


  private

  def set_slug
    self.slug = username.to_s.parameterize
  end
end
