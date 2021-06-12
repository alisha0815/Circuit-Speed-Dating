class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests

  has_many :bookings, dependent: :destroy
  has_many :events, through: :bookings

  has_many_attached :photos

  scope :males, -> { where(gender: "male") }
  scope :females, -> { where(gender: "female") }

  def interests_category(category)
  	interests.where(category: category)
  end
end
