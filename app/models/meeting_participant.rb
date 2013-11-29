class MeetingParticipant < ActiveRecord::Base
  belongs_to :daily_datum
  belongs_to :guardian
end