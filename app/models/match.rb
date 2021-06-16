class Match < ApplicationRecord
  belongs_to :event
  has_many :messages

  has_many :users, through: :user_matches
  has_many :user_matches
end
