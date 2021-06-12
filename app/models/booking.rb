class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  #validate :only_one_booking_event
  #scope :active, where(:active => true)

  protected

  #def only_one_booking_event
  #  if active && Event.active.where("id != ?", id).exists?
  #    errors.add(:name, "You've already booked this event!")
  #  end  
  #end
end
