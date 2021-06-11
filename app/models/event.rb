class Event < ApplicationRecord
  attr_accessor :start_date, :end_date
  validates :start_time, :end_time, presence: true
  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end
end
