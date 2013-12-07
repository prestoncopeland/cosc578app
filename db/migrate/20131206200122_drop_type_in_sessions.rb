class DropTypeInSessions < ActiveRecord::Migration
  def change

    remove_column :sessions, :type, :string

  end
end
