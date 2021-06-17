class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_many :bookings, dependent: :destroy

  has_many :bookings, dependent: :destroy
  has_many :events, through: :bookings

  has_many :matches, through: :user_matches
  has_many :user_matches, dependent: :destroy

  has_many :messages, dependent: :destroy

  has_many_attached :photos

  # Likes
  has_many :likes_as_asker, class_name: "Like", foreign_key: :asker_id, dependent: :destroy
  has_many :likes_as_reciever, class_name: "Like", foreign_key: :receiver_id, dependent: :destroy

  scope :males, -> { where(gender: "male") }
  scope :females, -> { where(gender: "female") }

  def interests_category(category)
    interests.where(category: category)
  end

  def likes?(user)
    likes_as_asker.find_by(receiver: user)
  end
end
