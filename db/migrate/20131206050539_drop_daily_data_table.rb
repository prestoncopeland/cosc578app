class DropDailyDataTable < ActiveRecord::Migration
  def change
    drop_table :daily_data
  end
end
