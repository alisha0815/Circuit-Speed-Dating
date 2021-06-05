class Interest < ApplicationRecord
  belongs_to :user, through: :user_interests # question ?
end
