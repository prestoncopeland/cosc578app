class ChangeDateFormatInSessions < ActiveRecord::Migration
  def change
    change_column :sessions, :date, :date
  end
end
