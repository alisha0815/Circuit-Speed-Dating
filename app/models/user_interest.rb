class UserInterest < ApplicationRecord
  belongs_to :user
  belongs_to :interest

  validates :interest, uniqueness: { scope: :user,
    message: "already added" }
end
