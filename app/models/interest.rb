class Interest < ApplicationRecord
  # has_many :user_interests, dependent: :destroy
  has_and_belongs_to_many :users, through: :user_interests
  has_many :user_interests
end
