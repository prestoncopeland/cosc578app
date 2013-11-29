class CreateMeetingParticipants < ActiveRecord::Migration
  def change
    create_table :meeting_participants do |t|
      t.references :daily_datum, index: true
      t.references :guardian, index: true

      t.timestamps
    end
  end
end
