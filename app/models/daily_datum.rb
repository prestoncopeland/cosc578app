class DailyDatum < ActiveRecord::Base
  belongs_to :employee
  belongs_to :student
  belongs_to :payment

  has_many :meeting_participants
end
