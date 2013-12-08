class RemoveTutorIdFromSessions < ActiveRecord::Migration
  def change
    remove_column :sessions, :tutor_id, :integer
  end
end
