class AddNotWorkSessionToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :not_work_session, :boolean
  end
end
