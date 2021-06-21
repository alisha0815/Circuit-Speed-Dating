class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :event, uniqueness: { scope: :user }

  after_create :check_event_capacity

  private

  def check_event_capacity
    event.match_making if event.capacity == event.bookings.count
  end
end
