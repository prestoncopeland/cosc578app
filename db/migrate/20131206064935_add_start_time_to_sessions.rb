class AddStartTimeToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :start_time, :time
  end
end
