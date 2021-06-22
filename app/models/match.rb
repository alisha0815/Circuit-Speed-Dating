class Match < ApplicationRecord
  before_create :set_vonage_session_id

  belongs_to :event
  has_many :messages

  has_many :users, through: :user_matches
  has_many :user_matches

  def set_vonage_session_id
    opentok = OpenTok::OpenTok.new ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET']
    session = opentok.create_session
    self.vonage_session_id = session.session_id
  end
end
