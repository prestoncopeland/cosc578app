class AddEndTimeToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :end_time, :time
  end
end
